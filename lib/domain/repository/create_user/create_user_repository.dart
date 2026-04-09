import 'package:dartz/dartz.dart';
import 'package:platform_commons/core/error/failure.dart';
import 'package:platform_commons/domain/entities/create_user/create_user_entities.dart';

abstract class CreateUserRepository {
  Future<Either<Failure, CreateUserEntity>> createUser(CreateUserEntity user);
  Future<Either<Failure, Unit>> syncPendingUsers();
}
