import 'package:drift/drift.dart';
import 'package:platform_commons/domain/entities/bookmark/bookmark_entity.dart';
import 'package:platform_commons/infrastructure/local/app_database.dart';

abstract class BookmarkLocalDataSource {
  Future<void> addBookmark(BookmarkEntity bookmark);
  Future<void> removeBookmark({required int localUserId, required int movieId});
  Future<List<Bookmark>> getBookmarksByUser(int localUserId);
  Future<List<Bookmark>> getUnsyncedBookmarks();
  Future<bool> isBookmarked({required int localUserId, required int movieId});
  Future<void> markBookmarkSynced({
    required int localId,
    required String remoteId,
    required String remoteUserId,
  });
}

class BookmarkLocalDataSourceImpl implements BookmarkLocalDataSource {
  final AppDatabase _db;

  BookmarkLocalDataSourceImpl(this._db);

  @override
  Future<void> addBookmark(BookmarkEntity bookmark) => _db.insertBookmark(
    BookmarksCompanion(
      localUserId: Value(bookmark.localUserId),
      remoteUserId: Value(bookmark.remoteUserId),
      movieId: Value(bookmark.movieId),
      movieTitle: Value(bookmark.movieTitle),
      moviePoster: Value(bookmark.moviePoster),
      isSynced: const Value(false),
    ),
  );

  @override
  Future<void> removeBookmark({
    required int localUserId,
    required int movieId,
  }) => _db.deleteBookmark(localUserId: localUserId, movieId: movieId);

  @override
  Future<List<Bookmark>> getBookmarksByUser(int localUserId) =>
      _db.getBookmarksByLocalUser(localUserId);

  @override
  Future<List<Bookmark>> getUnsyncedBookmarks() => _db.getUnsyncedBookmarks();

  @override
  Future<bool> isBookmarked({required int localUserId, required int movieId}) =>
      _db.isMovieBookmarked(localUserId: localUserId, movieId: movieId);

  @override
  Future<void> markBookmarkSynced({
    required int localId,
    required String remoteId,
    required String remoteUserId,
  }) => _db.markBookmarkAsSynced(
    localId: localId,
    remoteId: remoteId,
    remoteUserId: remoteUserId,
  );
}
