import 'package:dartz/dartz.dart';
import 'package:platform_commons/core/error/exception.dart';
import 'package:platform_commons/core/error/failure.dart';
import 'package:platform_commons/domain/entities/create_user/create_user_entities.dart';
import 'package:platform_commons/infrastructure/data_source/create_user/create_user_local_data_source.dart';
import 'package:platform_commons/infrastructure/model/create_user/create_user_model.dart';
import 'package:platform_commons/core/network/network_info.dart';
import 'package:platform_commons/domain/repository/create_user/create_user_repository.dart';
import 'package:platform_commons/infrastructure/data_source/create_user/create_user_remote_data_source.dart';

class CreateUserRepositoryImpl implements CreateUserRepository {
  final CreateUserRemoteDataSource _remote;
  final CreateUserLocalDataSource _local;
  final NetworkInfo _networkInfo;

  CreateUserRepositoryImpl({
    required CreateUserRemoteDataSource remote,
    required CreateUserLocalDataSource local,
    required NetworkInfo networkInfo,
  }) : _remote = remote,
       _local = local,
       _networkInfo = networkInfo;

  @override
  Future<Either<Failure, CreateUserEntity>> createUser(
    CreateUserEntity user,
  ) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remote.createUser(
          CreateUserRequestModel(name: user.name, job: user.job),
        );
        return Right(response);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.message));
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      try {
        final localId = await _local.saveUserLocally(user);
        return Right(
          CreateUserEntity(
            id: null,
            name: user.name,
            job: user.job,
            isSynced: false,
          ),
        );
      } catch (e) {
        return Left(CacheFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> syncPendingUsers() async {
    try {
      final unsyncedUsers = await _local.getUnsyncedUsers();

      for (final user in unsyncedUsers) {
        final response = await _remote.createUser(
          CreateUserRequestModel(name: user.name, job: user.job),
        );
        if (response.id != null) {
          await _local.markAsSynced(
            localId: user.localId,
            remoteId: response.id!,
          );
        }
      }
      return const Right(unit);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
