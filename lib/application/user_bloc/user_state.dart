part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;

  const factory UserState.loading() = _Loading;

  const factory UserState.loadingMore({
    required List<UserEntity> users,
    required int currentPage,
  }) = _LoadingMore;

  const factory UserState.loaded({
    required List<UserEntity> users,
    required int currentPage,
    required bool hasNextPage,
  }) = _Loaded;

  const factory UserState.error({required String message}) = _Error;
}
