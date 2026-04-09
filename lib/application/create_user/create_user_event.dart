part of 'create_user_bloc.dart';

@freezed
class CreateUserEvent with _$CreateUserEvent {
  const factory CreateUserEvent.submitUser({
    required String name,
    required String job,
  }) = _SubmitUser;

  const factory CreateUserEvent.syncPendingUsers() = _SyncPendingUsers;
}
