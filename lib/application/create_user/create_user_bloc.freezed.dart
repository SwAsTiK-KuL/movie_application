// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String job) submitUser,
    required TResult Function() syncPendingUsers,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String job)? submitUser,
    TResult? Function()? syncPendingUsers,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String job)? submitUser,
    TResult Function()? syncPendingUsers,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitUser value) submitUser,
    required TResult Function(_SyncPendingUsers value) syncPendingUsers,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitUser value)? submitUser,
    TResult? Function(_SyncPendingUsers value)? syncPendingUsers,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitUser value)? submitUser,
    TResult Function(_SyncPendingUsers value)? syncPendingUsers,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserEventCopyWith<$Res> {
  factory $CreateUserEventCopyWith(
    CreateUserEvent value,
    $Res Function(CreateUserEvent) then,
  ) = _$CreateUserEventCopyWithImpl<$Res, CreateUserEvent>;
}

/// @nodoc
class _$CreateUserEventCopyWithImpl<$Res, $Val extends CreateUserEvent>
    implements $CreateUserEventCopyWith<$Res> {
  _$CreateUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitUserImplCopyWith<$Res> {
  factory _$$SubmitUserImplCopyWith(
    _$SubmitUserImpl value,
    $Res Function(_$SubmitUserImpl) then,
  ) = __$$SubmitUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String job});
}

/// @nodoc
class __$$SubmitUserImplCopyWithImpl<$Res>
    extends _$CreateUserEventCopyWithImpl<$Res, _$SubmitUserImpl>
    implements _$$SubmitUserImplCopyWith<$Res> {
  __$$SubmitUserImplCopyWithImpl(
    _$SubmitUserImpl _value,
    $Res Function(_$SubmitUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? job = null}) {
    return _then(
      _$SubmitUserImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        job:
            null == job
                ? _value.job
                : job // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitUserImpl implements _SubmitUser {
  const _$SubmitUserImpl({required this.name, required this.job});

  @override
  final String name;
  @override
  final String job;

  @override
  String toString() {
    return 'CreateUserEvent.submitUser(name: $name, job: $job)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, job);

  /// Create a copy of CreateUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitUserImplCopyWith<_$SubmitUserImpl> get copyWith =>
      __$$SubmitUserImplCopyWithImpl<_$SubmitUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String job) submitUser,
    required TResult Function() syncPendingUsers,
  }) {
    return submitUser(name, job);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String job)? submitUser,
    TResult? Function()? syncPendingUsers,
  }) {
    return submitUser?.call(name, job);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String job)? submitUser,
    TResult Function()? syncPendingUsers,
    required TResult orElse(),
  }) {
    if (submitUser != null) {
      return submitUser(name, job);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitUser value) submitUser,
    required TResult Function(_SyncPendingUsers value) syncPendingUsers,
  }) {
    return submitUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitUser value)? submitUser,
    TResult? Function(_SyncPendingUsers value)? syncPendingUsers,
  }) {
    return submitUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitUser value)? submitUser,
    TResult Function(_SyncPendingUsers value)? syncPendingUsers,
    required TResult orElse(),
  }) {
    if (submitUser != null) {
      return submitUser(this);
    }
    return orElse();
  }
}

abstract class _SubmitUser implements CreateUserEvent {
  const factory _SubmitUser({
    required final String name,
    required final String job,
  }) = _$SubmitUserImpl;

  String get name;
  String get job;

  /// Create a copy of CreateUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitUserImplCopyWith<_$SubmitUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncPendingUsersImplCopyWith<$Res> {
  factory _$$SyncPendingUsersImplCopyWith(
    _$SyncPendingUsersImpl value,
    $Res Function(_$SyncPendingUsersImpl) then,
  ) = __$$SyncPendingUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncPendingUsersImplCopyWithImpl<$Res>
    extends _$CreateUserEventCopyWithImpl<$Res, _$SyncPendingUsersImpl>
    implements _$$SyncPendingUsersImplCopyWith<$Res> {
  __$$SyncPendingUsersImplCopyWithImpl(
    _$SyncPendingUsersImpl _value,
    $Res Function(_$SyncPendingUsersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncPendingUsersImpl implements _SyncPendingUsers {
  const _$SyncPendingUsersImpl();

  @override
  String toString() {
    return 'CreateUserEvent.syncPendingUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncPendingUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String job) submitUser,
    required TResult Function() syncPendingUsers,
  }) {
    return syncPendingUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String job)? submitUser,
    TResult? Function()? syncPendingUsers,
  }) {
    return syncPendingUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String job)? submitUser,
    TResult Function()? syncPendingUsers,
    required TResult orElse(),
  }) {
    if (syncPendingUsers != null) {
      return syncPendingUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitUser value) submitUser,
    required TResult Function(_SyncPendingUsers value) syncPendingUsers,
  }) {
    return syncPendingUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitUser value)? submitUser,
    TResult? Function(_SyncPendingUsers value)? syncPendingUsers,
  }) {
    return syncPendingUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitUser value)? submitUser,
    TResult Function(_SyncPendingUsers value)? syncPendingUsers,
    required TResult orElse(),
  }) {
    if (syncPendingUsers != null) {
      return syncPendingUsers(this);
    }
    return orElse();
  }
}

abstract class _SyncPendingUsers implements CreateUserEvent {
  const factory _SyncPendingUsers() = _$SyncPendingUsersImpl;
}

/// @nodoc
mixin _$CreateUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() syncing,
    required TResult Function(CreateUserEntity user) submitted,
    required TResult Function(CreateUserEntity user) savedOffline,
    required TResult Function() syncComplete,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? syncing,
    TResult? Function(CreateUserEntity user)? submitted,
    TResult? Function(CreateUserEntity user)? savedOffline,
    TResult? Function()? syncComplete,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? syncing,
    TResult Function(CreateUserEntity user)? submitted,
    TResult Function(CreateUserEntity user)? savedOffline,
    TResult Function()? syncComplete,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_SavedOffline value) savedOffline,
    required TResult Function(_SyncComplete value) syncComplete,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_SavedOffline value)? savedOffline,
    TResult? Function(_SyncComplete value)? syncComplete,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_SavedOffline value)? savedOffline,
    TResult Function(_SyncComplete value)? syncComplete,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserStateCopyWith<$Res> {
  factory $CreateUserStateCopyWith(
    CreateUserState value,
    $Res Function(CreateUserState) then,
  ) = _$CreateUserStateCopyWithImpl<$Res, CreateUserState>;
}

/// @nodoc
class _$CreateUserStateCopyWithImpl<$Res, $Val extends CreateUserState>
    implements $CreateUserStateCopyWith<$Res> {
  _$CreateUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateUserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() syncing,
    required TResult Function(CreateUserEntity user) submitted,
    required TResult Function(CreateUserEntity user) savedOffline,
    required TResult Function() syncComplete,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? syncing,
    TResult? Function(CreateUserEntity user)? submitted,
    TResult? Function(CreateUserEntity user)? savedOffline,
    TResult? Function()? syncComplete,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? syncing,
    TResult Function(CreateUserEntity user)? submitted,
    TResult Function(CreateUserEntity user)? savedOffline,
    TResult Function()? syncComplete,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_SavedOffline value) savedOffline,
    required TResult Function(_SyncComplete value) syncComplete,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_SavedOffline value)? savedOffline,
    TResult? Function(_SyncComplete value)? syncComplete,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_SavedOffline value)? savedOffline,
    TResult Function(_SyncComplete value)? syncComplete,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateUserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CreateUserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() syncing,
    required TResult Function(CreateUserEntity user) submitted,
    required TResult Function(CreateUserEntity user) savedOffline,
    required TResult Function() syncComplete,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? syncing,
    TResult? Function(CreateUserEntity user)? submitted,
    TResult? Function(CreateUserEntity user)? savedOffline,
    TResult? Function()? syncComplete,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? syncing,
    TResult Function(CreateUserEntity user)? submitted,
    TResult Function(CreateUserEntity user)? savedOffline,
    TResult Function()? syncComplete,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_SavedOffline value) savedOffline,
    required TResult Function(_SyncComplete value) syncComplete,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_SavedOffline value)? savedOffline,
    TResult? Function(_SyncComplete value)? syncComplete,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_SavedOffline value)? savedOffline,
    TResult Function(_SyncComplete value)? syncComplete,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreateUserState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SyncingImplCopyWith<$Res> {
  factory _$$SyncingImplCopyWith(
    _$SyncingImpl value,
    $Res Function(_$SyncingImpl) then,
  ) = __$$SyncingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncingImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$SyncingImpl>
    implements _$$SyncingImplCopyWith<$Res> {
  __$$SyncingImplCopyWithImpl(
    _$SyncingImpl _value,
    $Res Function(_$SyncingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncingImpl implements _Syncing {
  const _$SyncingImpl();

  @override
  String toString() {
    return 'CreateUserState.syncing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() syncing,
    required TResult Function(CreateUserEntity user) submitted,
    required TResult Function(CreateUserEntity user) savedOffline,
    required TResult Function() syncComplete,
    required TResult Function(String message) error,
  }) {
    return syncing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? syncing,
    TResult? Function(CreateUserEntity user)? submitted,
    TResult? Function(CreateUserEntity user)? savedOffline,
    TResult? Function()? syncComplete,
    TResult? Function(String message)? error,
  }) {
    return syncing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? syncing,
    TResult Function(CreateUserEntity user)? submitted,
    TResult Function(CreateUserEntity user)? savedOffline,
    TResult Function()? syncComplete,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (syncing != null) {
      return syncing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_SavedOffline value) savedOffline,
    required TResult Function(_SyncComplete value) syncComplete,
    required TResult Function(_Error value) error,
  }) {
    return syncing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_SavedOffline value)? savedOffline,
    TResult? Function(_SyncComplete value)? syncComplete,
    TResult? Function(_Error value)? error,
  }) {
    return syncing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_SavedOffline value)? savedOffline,
    TResult Function(_SyncComplete value)? syncComplete,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (syncing != null) {
      return syncing(this);
    }
    return orElse();
  }
}

abstract class _Syncing implements CreateUserState {
  const factory _Syncing() = _$SyncingImpl;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
    _$SubmittedImpl value,
    $Res Function(_$SubmittedImpl) then,
  ) = __$$SubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateUserEntity user});
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$SubmittedImpl>
    implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(
    _$SubmittedImpl _value,
    $Res Function(_$SubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$SubmittedImpl(
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as CreateUserEntity,
      ),
    );
  }
}

/// @nodoc

class _$SubmittedImpl implements _Submitted {
  const _$SubmittedImpl({required this.user});

  @override
  final CreateUserEntity user;

  @override
  String toString() {
    return 'CreateUserState.submitted(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmittedImplCopyWith<_$SubmittedImpl> get copyWith =>
      __$$SubmittedImplCopyWithImpl<_$SubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() syncing,
    required TResult Function(CreateUserEntity user) submitted,
    required TResult Function(CreateUserEntity user) savedOffline,
    required TResult Function() syncComplete,
    required TResult Function(String message) error,
  }) {
    return submitted(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? syncing,
    TResult? Function(CreateUserEntity user)? submitted,
    TResult? Function(CreateUserEntity user)? savedOffline,
    TResult? Function()? syncComplete,
    TResult? Function(String message)? error,
  }) {
    return submitted?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? syncing,
    TResult Function(CreateUserEntity user)? submitted,
    TResult Function(CreateUserEntity user)? savedOffline,
    TResult Function()? syncComplete,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_SavedOffline value) savedOffline,
    required TResult Function(_SyncComplete value) syncComplete,
    required TResult Function(_Error value) error,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_SavedOffline value)? savedOffline,
    TResult? Function(_SyncComplete value)? syncComplete,
    TResult? Function(_Error value)? error,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_SavedOffline value)? savedOffline,
    TResult Function(_SyncComplete value)? syncComplete,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements CreateUserState {
  const factory _Submitted({required final CreateUserEntity user}) =
      _$SubmittedImpl;

  CreateUserEntity get user;

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittedImplCopyWith<_$SubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedOfflineImplCopyWith<$Res> {
  factory _$$SavedOfflineImplCopyWith(
    _$SavedOfflineImpl value,
    $Res Function(_$SavedOfflineImpl) then,
  ) = __$$SavedOfflineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateUserEntity user});
}

/// @nodoc
class __$$SavedOfflineImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$SavedOfflineImpl>
    implements _$$SavedOfflineImplCopyWith<$Res> {
  __$$SavedOfflineImplCopyWithImpl(
    _$SavedOfflineImpl _value,
    $Res Function(_$SavedOfflineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$SavedOfflineImpl(
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as CreateUserEntity,
      ),
    );
  }
}

/// @nodoc

class _$SavedOfflineImpl implements _SavedOffline {
  const _$SavedOfflineImpl({required this.user});

  @override
  final CreateUserEntity user;

  @override
  String toString() {
    return 'CreateUserState.savedOffline(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedOfflineImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedOfflineImplCopyWith<_$SavedOfflineImpl> get copyWith =>
      __$$SavedOfflineImplCopyWithImpl<_$SavedOfflineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() syncing,
    required TResult Function(CreateUserEntity user) submitted,
    required TResult Function(CreateUserEntity user) savedOffline,
    required TResult Function() syncComplete,
    required TResult Function(String message) error,
  }) {
    return savedOffline(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? syncing,
    TResult? Function(CreateUserEntity user)? submitted,
    TResult? Function(CreateUserEntity user)? savedOffline,
    TResult? Function()? syncComplete,
    TResult? Function(String message)? error,
  }) {
    return savedOffline?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? syncing,
    TResult Function(CreateUserEntity user)? submitted,
    TResult Function(CreateUserEntity user)? savedOffline,
    TResult Function()? syncComplete,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (savedOffline != null) {
      return savedOffline(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_SavedOffline value) savedOffline,
    required TResult Function(_SyncComplete value) syncComplete,
    required TResult Function(_Error value) error,
  }) {
    return savedOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_SavedOffline value)? savedOffline,
    TResult? Function(_SyncComplete value)? syncComplete,
    TResult? Function(_Error value)? error,
  }) {
    return savedOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_SavedOffline value)? savedOffline,
    TResult Function(_SyncComplete value)? syncComplete,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (savedOffline != null) {
      return savedOffline(this);
    }
    return orElse();
  }
}

abstract class _SavedOffline implements CreateUserState {
  const factory _SavedOffline({required final CreateUserEntity user}) =
      _$SavedOfflineImpl;

  CreateUserEntity get user;

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedOfflineImplCopyWith<_$SavedOfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncCompleteImplCopyWith<$Res> {
  factory _$$SyncCompleteImplCopyWith(
    _$SyncCompleteImpl value,
    $Res Function(_$SyncCompleteImpl) then,
  ) = __$$SyncCompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncCompleteImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$SyncCompleteImpl>
    implements _$$SyncCompleteImplCopyWith<$Res> {
  __$$SyncCompleteImplCopyWithImpl(
    _$SyncCompleteImpl _value,
    $Res Function(_$SyncCompleteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncCompleteImpl implements _SyncComplete {
  const _$SyncCompleteImpl();

  @override
  String toString() {
    return 'CreateUserState.syncComplete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncCompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() syncing,
    required TResult Function(CreateUserEntity user) submitted,
    required TResult Function(CreateUserEntity user) savedOffline,
    required TResult Function() syncComplete,
    required TResult Function(String message) error,
  }) {
    return syncComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? syncing,
    TResult? Function(CreateUserEntity user)? submitted,
    TResult? Function(CreateUserEntity user)? savedOffline,
    TResult? Function()? syncComplete,
    TResult? Function(String message)? error,
  }) {
    return syncComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? syncing,
    TResult Function(CreateUserEntity user)? submitted,
    TResult Function(CreateUserEntity user)? savedOffline,
    TResult Function()? syncComplete,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (syncComplete != null) {
      return syncComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_SavedOffline value) savedOffline,
    required TResult Function(_SyncComplete value) syncComplete,
    required TResult Function(_Error value) error,
  }) {
    return syncComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_SavedOffline value)? savedOffline,
    TResult? Function(_SyncComplete value)? syncComplete,
    TResult? Function(_Error value)? error,
  }) {
    return syncComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_SavedOffline value)? savedOffline,
    TResult Function(_SyncComplete value)? syncComplete,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (syncComplete != null) {
      return syncComplete(this);
    }
    return orElse();
  }
}

abstract class _SyncComplete implements CreateUserState {
  const factory _SyncComplete() = _$SyncCompleteImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CreateUserState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() syncing,
    required TResult Function(CreateUserEntity user) submitted,
    required TResult Function(CreateUserEntity user) savedOffline,
    required TResult Function() syncComplete,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? syncing,
    TResult? Function(CreateUserEntity user)? submitted,
    TResult? Function(CreateUserEntity user)? savedOffline,
    TResult? Function()? syncComplete,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? syncing,
    TResult Function(CreateUserEntity user)? submitted,
    TResult Function(CreateUserEntity user)? savedOffline,
    TResult Function()? syncComplete,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Syncing value) syncing,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_SavedOffline value) savedOffline,
    required TResult Function(_SyncComplete value) syncComplete,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Syncing value)? syncing,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_SavedOffline value)? savedOffline,
    TResult? Function(_SyncComplete value)? syncComplete,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Syncing value)? syncing,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_SavedOffline value)? savedOffline,
    TResult Function(_SyncComplete value)? syncComplete,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CreateUserState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of CreateUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
