import 'package:platform_commons/domain/entities/user/user_entities.dart';

class UserListEntity {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<UserEntity> users;

  const UserListEntity({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.users,
  });

  bool get hasNextPage => page < totalPages;
}
