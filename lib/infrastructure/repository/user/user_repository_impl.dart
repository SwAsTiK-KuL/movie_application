import 'package:dartz/dartz.dart';
import 'package:platform_commons/core/error/exception.dart';
import 'package:platform_commons/core/error/failure.dart';
import 'package:platform_commons/domain/entities/user/user_list_entities.dart';
import 'package:platform_commons/domain/repository/user/user_repository.dart';
import 'package:platform_commons/infrastructure/data_source/user/user_remote_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, UserListEntity>> getUsers({required int page}) async {
    try {
      final result = await _remoteDataSource.getUsers(page: page);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
