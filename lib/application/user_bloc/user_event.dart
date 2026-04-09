part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetchUsers() = _FetchUsers;
  const factory UserEvent.loadNextPage() = _LoadNextPage;
}
