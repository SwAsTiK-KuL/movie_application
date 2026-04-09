part of 'create_user_bloc.dart';

@freezed
class CreateUserState with _$CreateUserState {
  const factory CreateUserState.initial() = _Initial;
  const factory CreateUserState.loading() = _Loading;
  const factory CreateUserState.syncing() = _Syncing;

  const factory CreateUserState.submitted({required CreateUserEntity user}) =
      _Submitted;

  const factory CreateUserState.savedOffline({required CreateUserEntity user}) =
      _SavedOffline;

  const factory CreateUserState.syncComplete() = _SyncComplete;

  const factory CreateUserState.error({required String message}) = _Error;
}
