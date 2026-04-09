import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class PendingUsers extends Table {
  IntColumn get localId => integer().autoIncrement()();
  TextColumn get remoteId => text().nullable()();
  TextColumn get name => text()();
  TextColumn get job => text()();
  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class Bookmarks extends Table {
  IntColumn get localId => integer().autoIncrement()();
  TextColumn get remoteId => text().nullable()();
  IntColumn get localUserId => integer()();
  TextColumn get remoteUserId => text().nullable()();
  IntColumn get movieId => integer()();
  TextColumn get movieTitle => text()();
  TextColumn get moviePoster => text()();
  BoolColumn get isSynced => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

@DriftDatabase(tables: [PendingUsers, Bookmarks])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) => m.createAll(),
    onUpgrade: (m, from, to) async {
      if (from < 2) await m.createTable(bookmarks);
    },
  );

  Future<int> insertPendingUser(PendingUsersCompanion user) =>
      into(pendingUsers).insert(user);

  Future<List<PendingUser>> getUnsyncedUsers() =>
      (select(pendingUsers)..where((u) => u.isSynced.equals(false))).get();

  Future<void> markUserAsSynced({
    required int localId,
    required String remoteId,
  }) => (update(pendingUsers)..where((u) => u.localId.equals(localId))).write(
    PendingUsersCompanion(
      remoteId: Value(remoteId),
      isSynced: const Value(true),
    ),
  );

  Future<List<PendingUser>> getAllUsers() => select(pendingUsers).get();

  Future<PendingUser?> getUserByLocalId(int localId) =>
      (select(pendingUsers)
        ..where((u) => u.localId.equals(localId))).getSingleOrNull();

  Future<int> insertBookmark(BookmarksCompanion bookmark) =>
      into(bookmarks).insert(bookmark);

  Future<List<Bookmark>> getBookmarksByLocalUser(int localUserId) =>
      (select(bookmarks)
        ..where((b) => b.localUserId.equals(localUserId))).get();

  Future<List<Bookmark>> getUnsyncedBookmarks() =>
      (select(bookmarks)..where((b) => b.isSynced.equals(false))).get();

  Future<bool> isMovieBookmarked({
    required int localUserId,
    required int movieId,
  }) async {
    final result =
        await (select(bookmarks)..where(
          (b) => b.localUserId.equals(localUserId) & b.movieId.equals(movieId),
        )).getSingleOrNull();
    return result != null;
  }

  Future<void> markBookmarkAsSynced({
    required int localId,
    required String remoteId,
    required String remoteUserId,
  }) => (update(bookmarks)..where((b) => b.localId.equals(localId))).write(
    BookmarksCompanion(
      remoteId: Value(remoteId),
      remoteUserId: Value(remoteUserId),
      isSynced: const Value(true),
    ),
  );

  Future<void> deleteBookmark({
    required int localUserId,
    required int movieId,
  }) =>
      (delete(bookmarks)..where(
        (b) => b.localUserId.equals(localUserId) & b.movieId.equals(movieId),
      )).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'platform_commons.db'));
    return NativeDatabase.createInBackground(file);
  });
}
