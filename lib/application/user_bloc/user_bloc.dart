import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platform_commons/domain/entities/user/user_entities.dart';
import 'package:platform_commons/domain/repository/user/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  int _currentPage = 1;
  final List<UserEntity> _users = [];

  UserBloc(this._userRepository) : super(const UserState.initial()) {
    on<_FetchUsers>(_onFetchUsers);
    on<_LoadNextPage>(_onLoadNextPage);
  }

  Future<void> _onFetchUsers(_FetchUsers event, Emitter<UserState> emit) async {
    _currentPage = 1;
    _users.clear();
    emit(const UserState.loading());

    final result = await _userRepository.getUsers(page: _currentPage);

    result.fold((failure) => emit(UserState.error(message: failure.message)), (
      data,
    ) {
      _users.addAll(data.users);
      emit(
        UserState.loaded(
          users: List.from(_users),
          currentPage: _currentPage,
          hasNextPage: data.hasNextPage,
        ),
      );
    });
  }

  Future<void> _onLoadNextPage(
    _LoadNextPage event,
    Emitter<UserState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded || !currentState.hasNextPage) return;

    _currentPage++;
    emit(
      UserState.loadingMore(
        users: List.from(_users),
        currentPage: _currentPage,
      ),
    );

    final result = await _userRepository.getUsers(page: _currentPage);

    result.fold(
      (failure) {
        _currentPage--;

        emit(
          UserState.loaded(
            users: List.from(_users),
            currentPage: _currentPage,
            hasNextPage: true,
          ),
        );
      },
      (data) {
        final existingIds = _users.map((u) => u.id).toSet();
        final newUsers =
            data.users.where((u) => !existingIds.contains(u.id)).toList();

        _users.addAll(newUsers);
        emit(
          UserState.loaded(
            users: List.from(_users),
            currentPage: _currentPage,
            hasNextPage: data.hasNextPage,
          ),
        );
      },
    );
  }
}
