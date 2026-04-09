// application/create_user_bloc.dart

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platform_commons/domain/entities/create_user/create_user_entities.dart';
import 'package:platform_commons/domain/repository/create_user/create_user_repository.dart';

part 'create_user_bloc.freezed.dart';
part 'create_user_event.dart';
part 'create_user_state.dart';

class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {
  final CreateUserRepository _repository;

  CreateUserBloc(this._repository) : super(const CreateUserState.initial()) {
    on<_SubmitUser>(_onSubmitUser);
    on<_SyncPendingUsers>(_onSyncPendingUsers);
  }

  Future<void> _onSubmitUser(
    _SubmitUser event,
    Emitter<CreateUserState> emit,
  ) async {
    emit(const CreateUserState.loading());

    final result = await _repository.createUser(
      CreateUserEntity(name: event.name, job: event.job),
    );

    result.fold(
      (failure) => emit(CreateUserState.error(message: failure.message)),
      (user) =>
          user.isSynced
              ? emit(CreateUserState.submitted(user: user))
              : emit(CreateUserState.savedOffline(user: user)),
    );
  }

  Future<void> _onSyncPendingUsers(
    _SyncPendingUsers event,
    Emitter<CreateUserState> emit,
  ) async {
    emit(const CreateUserState.syncing());

    final result = await _repository.syncPendingUsers();

    result.fold(
      (failure) => emit(CreateUserState.error(message: failure.message)),
      (_) => emit(const CreateUserState.syncComplete()),
    );
  }
}
