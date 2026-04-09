import 'package:dio/dio.dart';
import 'package:platform_commons/infrastructure/model/user/user_list_model.dart';

abstract class UserRemoteDataSource {
  Future<UserListModel> getUsers({required int page});
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio;

  UserRemoteDataSourceImpl(this._dio);

  @override
  Future<UserListModel> getUsers({required int page}) async {
    final response = await _dio.get(
      '/api/users',
      queryParameters: {'page': page},
    );
    return UserListModel.fromJson(response.data as Map<String, dynamic>);
  }
}
