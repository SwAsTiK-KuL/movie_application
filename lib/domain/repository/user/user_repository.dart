import 'package:dartz/dartz.dart';
import 'package:platform_commons/core/error/failure.dart';
import 'package:platform_commons/domain/entities/user/user_list_entities.dart';

abstract class UserRepository {
  Future<Either<Failure, UserListEntity>> getUsers({required int page});
}
