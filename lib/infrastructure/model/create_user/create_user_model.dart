import 'package:platform_commons/domain/entities/create_user/create_user_entities.dart';

class CreateUserRequestModel {
  final String name;
  final String job;

  const CreateUserRequestModel({required this.name, required this.job});

  Map<String, dynamic> toJson() => {'name': name, 'job': job};
}

class CreateUserResponseModel extends CreateUserEntity {
  const CreateUserResponseModel({
    required super.id,
    required super.name,
    required super.job,
    required super.createdAt,
    super.isSynced = true,
  });

  factory CreateUserResponseModel.fromJson(Map<String, dynamic> json) =>
      CreateUserResponseModel(
        id: json['id'] as String?,
        name: json['name'] as String,
        job: json['job'] as String,
        createdAt: json['createdAt'] as String?,
      );
}
