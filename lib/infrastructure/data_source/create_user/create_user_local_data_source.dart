import 'package:drift/drift.dart';
import 'package:platform_commons/domain/entities/create_user/create_user_entities.dart';
import 'package:platform_commons/infrastructure/local/app_database.dart';

abstract class CreateUserLocalDataSource {
  Future<int> saveUserLocally(CreateUserEntity user);
  Future<List<PendingUser>> getUnsyncedUsers();
  Future<void> markAsSynced({required int localId, required String remoteId});
}

class CreateUserLocalDataSourceImpl implements CreateUserLocalDataSource {
  final AppDatabase _db;

  CreateUserLocalDataSourceImpl(this._db);

  @override
  Future<int> saveUserLocally(CreateUserEntity user) => _db.insertPendingUser(
    PendingUsersCompanion(
      name: Value(user.name),
      job: Value(user.job),
      isSynced: const Value(false),
    ),
  );

  @override
  Future<List<PendingUser>> getUnsyncedUsers() => _db.getUnsyncedUsers();

  @override
  Future<void> markAsSynced({required int localId, required String remoteId}) =>
      _db.markUserAsSynced(localId: localId, remoteId: remoteId);
}
