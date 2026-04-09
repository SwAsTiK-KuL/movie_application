import 'package:dio/dio.dart';
import 'package:platform_commons/infrastructure/model/create_user/create_user_model.dart';

abstract class CreateUserRemoteDataSource {
  Future<CreateUserResponseModel> createUser(CreateUserRequestModel request);
}

class CreateUserRemoteDataSourceImpl implements CreateUserRemoteDataSource {
  final Dio _dio;

  CreateUserRemoteDataSourceImpl(this._dio);

  @override
  Future<CreateUserResponseModel> createUser(
    CreateUserRequestModel request,
  ) async {
    final response = await _dio.post('/api/users', data: request.toJson());
    return CreateUserResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );
  }
}
