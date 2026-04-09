class CreateUserEntity {
  final String? id;
  final String name;
  final String job;
  final String? createdAt;
  final bool isSynced;

  const CreateUserEntity({
    this.id,
    required this.name,
    required this.job,
    this.createdAt,
    this.isSynced = false,
  });
}
