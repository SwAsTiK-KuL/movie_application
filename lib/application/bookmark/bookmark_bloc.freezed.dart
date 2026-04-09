// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int localUserId) loadBookmarks,
    required TResult Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )
    toggleBookmark,
    required TResult Function() syncBookmarks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int localUserId)? loadBookmarks,
    TResult? Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )?
    toggleBookmark,
    TResult? Function()? syncBookmarks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int localUserId)? loadBookmarks,
    TResult Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )?
    toggleBookmark,
    TResult Function()? syncBookmarks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBookmarks value) loadBookmarks,
    required TResult Function(_ToggleBookmark value) toggleBookmark,
    required TResult Function(_SyncBookmarks value) syncBookmarks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBookmarks value)? loadBookmarks,
    TResult? Function(_ToggleBookmark value)? toggleBookmark,
    TResult? Function(_SyncBookmarks value)? syncBookmarks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBookmarks value)? loadBookmarks,
    TResult Function(_ToggleBookmark value)? toggleBookmark,
    TResult Function(_SyncBookmarks value)? syncBookmarks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
    BookmarkEvent value,
    $Res Function(BookmarkEvent) then,
  ) = _$BookmarkEventCopyWithImpl<$Res, BookmarkEvent>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res, $Val extends BookmarkEvent>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadBookmarksImplCopyWith<$Res> {
  factory _$$LoadBookmarksImplCopyWith(
    _$LoadBookmarksImpl value,
    $Res Function(_$LoadBookmarksImpl) then,
  ) = __$$LoadBookmarksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int localUserId});
}

/// @nodoc
class __$$LoadBookmarksImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$LoadBookmarksImpl>
    implements _$$LoadBookmarksImplCopyWith<$Res> {
  __$$LoadBookmarksImplCopyWithImpl(
    _$LoadBookmarksImpl _value,
    $Res Function(_$LoadBookmarksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? localUserId = null}) {
    return _then(
      _$LoadBookmarksImpl(
        localUserId:
            null == localUserId
                ? _value.localUserId
                : localUserId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadBookmarksImpl implements _LoadBookmarks {
  const _$LoadBookmarksImpl({required this.localUserId});

  @override
  final int localUserId;

  @override
  String toString() {
    return 'BookmarkEvent.loadBookmarks(localUserId: $localUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBookmarksImpl &&
            (identical(other.localUserId, localUserId) ||
                other.localUserId == localUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localUserId);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBookmarksImplCopyWith<_$LoadBookmarksImpl> get copyWith =>
      __$$LoadBookmarksImplCopyWithImpl<_$LoadBookmarksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int localUserId) loadBookmarks,
    required TResult Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )
    toggleBookmark,
    required TResult Function() syncBookmarks,
  }) {
    return loadBookmarks(localUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int localUserId)? loadBookmarks,
    TResult? Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )?
    toggleBookmark,
    TResult? Function()? syncBookmarks,
  }) {
    return loadBookmarks?.call(localUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int localUserId)? loadBookmarks,
    TResult Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )?
    toggleBookmark,
    TResult Function()? syncBookmarks,
    required TResult orElse(),
  }) {
    if (loadBookmarks != null) {
      return loadBookmarks(localUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBookmarks value) loadBookmarks,
    required TResult Function(_ToggleBookmark value) toggleBookmark,
    required TResult Function(_SyncBookmarks value) syncBookmarks,
  }) {
    return loadBookmarks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBookmarks value)? loadBookmarks,
    TResult? Function(_ToggleBookmark value)? toggleBookmark,
    TResult? Function(_SyncBookmarks value)? syncBookmarks,
  }) {
    return loadBookmarks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBookmarks value)? loadBookmarks,
    TResult Function(_ToggleBookmark value)? toggleBookmark,
    TResult Function(_SyncBookmarks value)? syncBookmarks,
    required TResult orElse(),
  }) {
    if (loadBookmarks != null) {
      return loadBookmarks(this);
    }
    return orElse();
  }
}

abstract class _LoadBookmarks implements BookmarkEvent {
  const factory _LoadBookmarks({required final int localUserId}) =
      _$LoadBookmarksImpl;

  int get localUserId;

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadBookmarksImplCopyWith<_$LoadBookmarksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleBookmarkImplCopyWith<$Res> {
  factory _$$ToggleBookmarkImplCopyWith(
    _$ToggleBookmarkImpl value,
    $Res Function(_$ToggleBookmarkImpl) then,
  ) = __$$ToggleBookmarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int localUserId,
    String? remoteUserId,
    int movieId,
    String movieTitle,
    String moviePoster,
  });
}

/// @nodoc
class __$$ToggleBookmarkImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$ToggleBookmarkImpl>
    implements _$$ToggleBookmarkImplCopyWith<$Res> {
  __$$ToggleBookmarkImplCopyWithImpl(
    _$ToggleBookmarkImpl _value,
    $Res Function(_$ToggleBookmarkImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localUserId = null,
    Object? remoteUserId = freezed,
    Object? movieId = null,
    Object? movieTitle = null,
    Object? moviePoster = null,
  }) {
    return _then(
      _$ToggleBookmarkImpl(
        localUserId:
            null == localUserId
                ? _value.localUserId
                : localUserId // ignore: cast_nullable_to_non_nullable
                    as int,
        remoteUserId:
            freezed == remoteUserId
                ? _value.remoteUserId
                : remoteUserId // ignore: cast_nullable_to_non_nullable
                    as String?,
        movieId:
            null == movieId
                ? _value.movieId
                : movieId // ignore: cast_nullable_to_non_nullable
                    as int,
        movieTitle:
            null == movieTitle
                ? _value.movieTitle
                : movieTitle // ignore: cast_nullable_to_non_nullable
                    as String,
        moviePoster:
            null == moviePoster
                ? _value.moviePoster
                : moviePoster // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ToggleBookmarkImpl implements _ToggleBookmark {
  const _$ToggleBookmarkImpl({
    required this.localUserId,
    required this.remoteUserId,
    required this.movieId,
    required this.movieTitle,
    required this.moviePoster,
  });

  @override
  final int localUserId;
  @override
  final String? remoteUserId;
  @override
  final int movieId;
  @override
  final String movieTitle;
  @override
  final String moviePoster;

  @override
  String toString() {
    return 'BookmarkEvent.toggleBookmark(localUserId: $localUserId, remoteUserId: $remoteUserId, movieId: $movieId, movieTitle: $movieTitle, moviePoster: $moviePoster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleBookmarkImpl &&
            (identical(other.localUserId, localUserId) ||
                other.localUserId == localUserId) &&
            (identical(other.remoteUserId, remoteUserId) ||
                other.remoteUserId == remoteUserId) &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.movieTitle, movieTitle) ||
                other.movieTitle == movieTitle) &&
            (identical(other.moviePoster, moviePoster) ||
                other.moviePoster == moviePoster));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    localUserId,
    remoteUserId,
    movieId,
    movieTitle,
    moviePoster,
  );

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleBookmarkImplCopyWith<_$ToggleBookmarkImpl> get copyWith =>
      __$$ToggleBookmarkImplCopyWithImpl<_$ToggleBookmarkImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int localUserId) loadBookmarks,
    required TResult Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )
    toggleBookmark,
    required TResult Function() syncBookmarks,
  }) {
    return toggleBookmark(
      localUserId,
      remoteUserId,
      movieId,
      movieTitle,
      moviePoster,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int localUserId)? loadBookmarks,
    TResult? Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )?
    toggleBookmark,
    TResult? Function()? syncBookmarks,
  }) {
    return toggleBookmark?.call(
      localUserId,
      remoteUserId,
      movieId,
      movieTitle,
      moviePoster,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int localUserId)? loadBookmarks,
    TResult Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )?
    toggleBookmark,
    TResult Function()? syncBookmarks,
    required TResult orElse(),
  }) {
    if (toggleBookmark != null) {
      return toggleBookmark(
        localUserId,
        remoteUserId,
        movieId,
        movieTitle,
        moviePoster,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBookmarks value) loadBookmarks,
    required TResult Function(_ToggleBookmark value) toggleBookmark,
    required TResult Function(_SyncBookmarks value) syncBookmarks,
  }) {
    return toggleBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBookmarks value)? loadBookmarks,
    TResult? Function(_ToggleBookmark value)? toggleBookmark,
    TResult? Function(_SyncBookmarks value)? syncBookmarks,
  }) {
    return toggleBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBookmarks value)? loadBookmarks,
    TResult Function(_ToggleBookmark value)? toggleBookmark,
    TResult Function(_SyncBookmarks value)? syncBookmarks,
    required TResult orElse(),
  }) {
    if (toggleBookmark != null) {
      return toggleBookmark(this);
    }
    return orElse();
  }
}

abstract class _ToggleBookmark implements BookmarkEvent {
  const factory _ToggleBookmark({
    required final int localUserId,
    required final String? remoteUserId,
    required final int movieId,
    required final String movieTitle,
    required final String moviePoster,
  }) = _$ToggleBookmarkImpl;

  int get localUserId;
  String? get remoteUserId;
  int get movieId;
  String get movieTitle;
  String get moviePoster;

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleBookmarkImplCopyWith<_$ToggleBookmarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncBookmarksImplCopyWith<$Res> {
  factory _$$SyncBookmarksImplCopyWith(
    _$SyncBookmarksImpl value,
    $Res Function(_$SyncBookmarksImpl) then,
  ) = __$$SyncBookmarksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncBookmarksImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$SyncBookmarksImpl>
    implements _$$SyncBookmarksImplCopyWith<$Res> {
  __$$SyncBookmarksImplCopyWithImpl(
    _$SyncBookmarksImpl _value,
    $Res Function(_$SyncBookmarksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncBookmarksImpl implements _SyncBookmarks {
  const _$SyncBookmarksImpl();

  @override
  String toString() {
    return 'BookmarkEvent.syncBookmarks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncBookmarksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int localUserId) loadBookmarks,
    required TResult Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )
    toggleBookmark,
    required TResult Function() syncBookmarks,
  }) {
    return syncBookmarks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int localUserId)? loadBookmarks,
    TResult? Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )?
    toggleBookmark,
    TResult? Function()? syncBookmarks,
  }) {
    return syncBookmarks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int localUserId)? loadBookmarks,
    TResult Function(
      int localUserId,
      String? remoteUserId,
      int movieId,
      String movieTitle,
      String moviePoster,
    )?
    toggleBookmark,
    TResult Function()? syncBookmarks,
    required TResult orElse(),
  }) {
    if (syncBookmarks != null) {
      return syncBookmarks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBookmarks value) loadBookmarks,
    required TResult Function(_ToggleBookmark value) toggleBookmark,
    required TResult Function(_SyncBookmarks value) syncBookmarks,
  }) {
    return syncBookmarks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBookmarks value)? loadBookmarks,
    TResult? Function(_ToggleBookmark value)? toggleBookmark,
    TResult? Function(_SyncBookmarks value)? syncBookmarks,
  }) {
    return syncBookmarks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBookmarks value)? loadBookmarks,
    TResult Function(_ToggleBookmark value)? toggleBookmark,
    TResult Function(_SyncBookmarks value)? syncBookmarks,
    required TResult orElse(),
  }) {
    if (syncBookmarks != null) {
      return syncBookmarks(this);
    }
    return orElse();
  }
}

abstract class _SyncBookmarks implements BookmarkEvent {
  const factory _SyncBookmarks() = _$SyncBookmarksImpl;
}

/// @nodoc
mixin _$BookmarkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Bookmark> bookmarks) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bookmark> bookmarks)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bookmark> bookmarks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
    BookmarkState value,
    $Res Function(BookmarkState) then,
  ) = _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkState
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
    extends _$BookmarkStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BookmarkState.initial()';
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
    required TResult Function(List<Bookmark> bookmarks) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bookmark> bookmarks)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bookmark> bookmarks)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookmarkState {
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
    extends _$BookmarkStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BookmarkState.loading()';
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
    required TResult Function(List<Bookmark> bookmarks) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bookmark> bookmarks)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bookmark> bookmarks)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BookmarkState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Bookmark> bookmarks});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bookmarks = null}) {
    return _then(
      _$LoadedImpl(
        bookmarks:
            null == bookmarks
                ? _value._bookmarks
                : bookmarks // ignore: cast_nullable_to_non_nullable
                    as List<Bookmark>,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Bookmark> bookmarks})
    : _bookmarks = bookmarks;

  final List<Bookmark> _bookmarks;
  @override
  List<Bookmark> get bookmarks {
    if (_bookmarks is EqualUnmodifiableListView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarks);
  }

  @override
  String toString() {
    return 'BookmarkState.loaded(bookmarks: $bookmarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(
              other._bookmarks,
              _bookmarks,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookmarks));

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Bookmark> bookmarks) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bookmark> bookmarks)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(bookmarks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bookmark> bookmarks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bookmarks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BookmarkState {
  const factory _Loaded({required final List<Bookmark> bookmarks}) =
      _$LoadedImpl;

  List<Bookmark> get bookmarks;

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$BookmarkStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookmarkState
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
    return 'BookmarkState.error(message: $message)';
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

  /// Create a copy of BookmarkState
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
    required TResult Function(List<Bookmark> bookmarks) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bookmark> bookmarks)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bookmark> bookmarks)? loaded,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BookmarkState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of BookmarkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
