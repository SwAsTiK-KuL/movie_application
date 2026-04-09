import 'package:platform_commons/domain/entities/user/user_list_entities.dart';
import 'package:platform_commons/infrastructure/model/user/user_model.dart';

class UserListModel extends UserListEntity {
  const UserListModel({
    required super.page,
    required super.perPage,
    required super.total,
    required super.totalPages,
    required super.users,
  });

  factory UserListModel.fromJson(Map<String, dynamic> json) => UserListModel(
    page: json['page'] as int,
    perPage: json['per_page'] as int,
    total: json['total'] as int,
    totalPages: json['total_pages'] as int,
    users:
        (json['data'] as List<dynamic>)
            .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
            .toList(),
  );
}
