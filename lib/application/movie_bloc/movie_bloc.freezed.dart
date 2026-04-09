// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
    required TResult Function() loadNextPage,
    required TResult Function(int movieId) fetchDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMovies,
    TResult? Function()? loadNextPage,
    TResult? Function(int movieId)? fetchDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    TResult Function()? loadNextPage,
    TResult Function(int movieId)? fetchDetail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchMovies,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_FetchDetail value) fetchDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchMovies,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_FetchDetail value)? fetchDetail,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchMovies,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_FetchDetail value)? fetchDetail,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEventCopyWith<$Res> {
  factory $MovieEventCopyWith(
    MovieEvent value,
    $Res Function(MovieEvent) then,
  ) = _$MovieEventCopyWithImpl<$Res, MovieEvent>;
}

/// @nodoc
class _$MovieEventCopyWithImpl<$Res, $Val extends MovieEvent>
    implements $MovieEventCopyWith<$Res> {
  _$MovieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchMoviesImplCopyWith<$Res> {
  factory _$$FetchMoviesImplCopyWith(
    _$FetchMoviesImpl value,
    $Res Function(_$FetchMoviesImpl) then,
  ) = __$$FetchMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoviesImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$FetchMoviesImpl>
    implements _$$FetchMoviesImplCopyWith<$Res> {
  __$$FetchMoviesImplCopyWithImpl(
    _$FetchMoviesImpl _value,
    $Res Function(_$FetchMoviesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchMoviesImpl implements _FetchMovies {
  const _$FetchMoviesImpl();

  @override
  String toString() {
    return 'MovieEvent.fetchMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
    required TResult Function() loadNextPage,
    required TResult Function(int movieId) fetchDetail,
  }) {
    return fetchMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMovies,
    TResult? Function()? loadNextPage,
    TResult? Function(int movieId)? fetchDetail,
  }) {
    return fetchMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    TResult Function()? loadNextPage,
    TResult Function(int movieId)? fetchDetail,
    required TResult orElse(),
  }) {
    if (fetchMovies != null) {
      return fetchMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchMovies,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_FetchDetail value) fetchDetail,
  }) {
    return fetchMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchMovies,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_FetchDetail value)? fetchDetail,
  }) {
    return fetchMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchMovies,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_FetchDetail value)? fetchDetail,
    required TResult orElse(),
  }) {
    if (fetchMovies != null) {
      return fetchMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchMovies implements MovieEvent {
  const factory _FetchMovies() = _$FetchMoviesImpl;
}

/// @nodoc
abstract class _$$LoadNextPageImplCopyWith<$Res> {
  factory _$$LoadNextPageImplCopyWith(
    _$LoadNextPageImpl value,
    $Res Function(_$LoadNextPageImpl) then,
  ) = __$$LoadNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNextPageImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$LoadNextPageImpl>
    implements _$$LoadNextPageImplCopyWith<$Res> {
  __$$LoadNextPageImplCopyWithImpl(
    _$LoadNextPageImpl _value,
    $Res Function(_$LoadNextPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadNextPageImpl implements _LoadNextPage {
  const _$LoadNextPageImpl();

  @override
  String toString() {
    return 'MovieEvent.loadNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
    required TResult Function() loadNextPage,
    required TResult Function(int movieId) fetchDetail,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMovies,
    TResult? Function()? loadNextPage,
    TResult? Function(int movieId)? fetchDetail,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    TResult Function()? loadNextPage,
    TResult Function(int movieId)? fetchDetail,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchMovies,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_FetchDetail value) fetchDetail,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchMovies,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_FetchDetail value)? fetchDetail,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchMovies,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_FetchDetail value)? fetchDetail,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class _LoadNextPage implements MovieEvent {
  const factory _LoadNextPage() = _$LoadNextPageImpl;
}

/// @nodoc
abstract class _$$FetchDetailImplCopyWith<$Res> {
  factory _$$FetchDetailImplCopyWith(
    _$FetchDetailImpl value,
    $Res Function(_$FetchDetailImpl) then,
  ) = __$$FetchDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$FetchDetailImplCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$FetchDetailImpl>
    implements _$$FetchDetailImplCopyWith<$Res> {
  __$$FetchDetailImplCopyWithImpl(
    _$FetchDetailImpl _value,
    $Res Function(_$FetchDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? movieId = null}) {
    return _then(
      _$FetchDetailImpl(
        movieId:
            null == movieId
                ? _value.movieId
                : movieId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$FetchDetailImpl implements _FetchDetail {
  const _$FetchDetailImpl({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieEvent.fetchDetail(movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDetailImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDetailImplCopyWith<_$FetchDetailImpl> get copyWith =>
      __$$FetchDetailImplCopyWithImpl<_$FetchDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchMovies,
    required TResult Function() loadNextPage,
    required TResult Function(int movieId) fetchDetail,
  }) {
    return fetchDetail(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchMovies,
    TResult? Function()? loadNextPage,
    TResult? Function(int movieId)? fetchDetail,
  }) {
    return fetchDetail?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchMovies,
    TResult Function()? loadNextPage,
    TResult Function(int movieId)? fetchDetail,
    required TResult orElse(),
  }) {
    if (fetchDetail != null) {
      return fetchDetail(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMovies value) fetchMovies,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_FetchDetail value) fetchDetail,
  }) {
    return fetchDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMovies value)? fetchMovies,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_FetchDetail value)? fetchDetail,
  }) {
    return fetchDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMovies value)? fetchMovies,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_FetchDetail value)? fetchDetail,
    required TResult orElse(),
  }) {
    if (fetchDetail != null) {
      return fetchDetail(this);
    }
    return orElse();
  }
}

abstract class _FetchDetail implements MovieEvent {
  const factory _FetchDetail({required final int movieId}) = _$FetchDetailImpl;

  int get movieId;

  /// Create a copy of MovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchDetailImplCopyWith<_$FetchDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies, int currentPage)
    loadingMore,
    required TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )
    loaded,
    required TResult Function() loadingDetail,
    required TResult Function(MovieDetailEntity movie) detailLoaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult? Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult? Function()? loadingDetail,
    TResult? Function(MovieDetailEntity movie)? detailLoaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult Function()? loadingDetail,
    TResult Function(MovieDetailEntity movie)? detailLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingDetail value) loadingDetail,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingDetail value)? loadingDetail,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingDetail value)? loadingDetail,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
    MovieState value,
    $Res Function(MovieState) then,
  ) = _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieState
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
    extends _$MovieStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MovieState.initial()';
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
    required TResult Function(List<MovieEntity> movies, int currentPage)
    loadingMore,
    required TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )
    loaded,
    required TResult Function() loadingDetail,
    required TResult Function(MovieDetailEntity movie) detailLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult? Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult? Function()? loadingDetail,
    TResult? Function(MovieDetailEntity movie)? detailLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult Function()? loadingDetail,
    TResult Function(MovieDetailEntity movie)? detailLoaded,
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
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingDetail value) loadingDetail,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingDetail value)? loadingDetail,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingDetail value)? loadingDetail,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MovieState {
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
    extends _$MovieStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MovieState.loading()';
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
    required TResult Function(List<MovieEntity> movies, int currentPage)
    loadingMore,
    required TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )
    loaded,
    required TResult Function() loadingDetail,
    required TResult Function(MovieDetailEntity movie) detailLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult? Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult? Function()? loadingDetail,
    TResult? Function(MovieDetailEntity movie)? detailLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult Function()? loadingDetail,
    TResult Function(MovieDetailEntity movie)? detailLoaded,
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
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingDetail value) loadingDetail,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingDetail value)? loadingDetail,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingDetail value)? loadingDetail,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MovieState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadingMoreImplCopyWith<$Res> {
  factory _$$LoadingMoreImplCopyWith(
    _$LoadingMoreImpl value,
    $Res Function(_$LoadingMoreImpl) then,
  ) = __$$LoadingMoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieEntity> movies, int currentPage});
}

/// @nodoc
class __$$LoadingMoreImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$LoadingMoreImpl>
    implements _$$LoadingMoreImplCopyWith<$Res> {
  __$$LoadingMoreImplCopyWithImpl(
    _$LoadingMoreImpl _value,
    $Res Function(_$LoadingMoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? movies = null, Object? currentPage = null}) {
    return _then(
      _$LoadingMoreImpl(
        movies:
            null == movies
                ? _value._movies
                : movies // ignore: cast_nullable_to_non_nullable
                    as List<MovieEntity>,
        currentPage:
            null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadingMoreImpl implements _LoadingMore {
  const _$LoadingMoreImpl({
    required final List<MovieEntity> movies,
    required this.currentPage,
  }) : _movies = movies;

  final List<MovieEntity> _movies;
  @override
  List<MovieEntity> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final int currentPage;

  @override
  String toString() {
    return 'MovieState.loadingMore(movies: $movies, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMoreImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_movies),
    currentPage,
  );

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingMoreImplCopyWith<_$LoadingMoreImpl> get copyWith =>
      __$$LoadingMoreImplCopyWithImpl<_$LoadingMoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies, int currentPage)
    loadingMore,
    required TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )
    loaded,
    required TResult Function() loadingDetail,
    required TResult Function(MovieDetailEntity movie) detailLoaded,
    required TResult Function(String message) error,
  }) {
    return loadingMore(movies, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult? Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult? Function()? loadingDetail,
    TResult? Function(MovieDetailEntity movie)? detailLoaded,
    TResult? Function(String message)? error,
  }) {
    return loadingMore?.call(movies, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult Function()? loadingDetail,
    TResult Function(MovieDetailEntity movie)? detailLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(movies, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingDetail value) loadingDetail,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingDetail value)? loadingDetail,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingDetail value)? loadingDetail,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore implements MovieState {
  const factory _LoadingMore({
    required final List<MovieEntity> movies,
    required final int currentPage,
  }) = _$LoadingMoreImpl;

  List<MovieEntity> get movies;
  int get currentPage;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingMoreImplCopyWith<_$LoadingMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieEntity> movies, int currentPage, bool hasNextPage});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
    Object? currentPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(
      _$LoadedImpl(
        movies:
            null == movies
                ? _value._movies
                : movies // ignore: cast_nullable_to_non_nullable
                    as List<MovieEntity>,
        currentPage:
            null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                    as int,
        hasNextPage:
            null == hasNextPage
                ? _value.hasNextPage
                : hasNextPage // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({
    required final List<MovieEntity> movies,
    required this.currentPage,
    required this.hasNextPage,
  }) : _movies = movies;

  final List<MovieEntity> _movies;
  @override
  List<MovieEntity> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final int currentPage;
  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'MovieState.loaded(movies: $movies, currentPage: $currentPage, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_movies),
    currentPage,
    hasNextPage,
  );

  /// Create a copy of MovieState
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
    required TResult Function(List<MovieEntity> movies, int currentPage)
    loadingMore,
    required TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )
    loaded,
    required TResult Function() loadingDetail,
    required TResult Function(MovieDetailEntity movie) detailLoaded,
    required TResult Function(String message) error,
  }) {
    return loaded(movies, currentPage, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult? Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult? Function()? loadingDetail,
    TResult? Function(MovieDetailEntity movie)? detailLoaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(movies, currentPage, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult Function()? loadingDetail,
    TResult Function(MovieDetailEntity movie)? detailLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies, currentPage, hasNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingDetail value) loadingDetail,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingDetail value)? loadingDetail,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingDetail value)? loadingDetail,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MovieState {
  const factory _Loaded({
    required final List<MovieEntity> movies,
    required final int currentPage,
    required final bool hasNextPage,
  }) = _$LoadedImpl;

  List<MovieEntity> get movies;
  int get currentPage;
  bool get hasNextPage;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingDetailImplCopyWith<$Res> {
  factory _$$LoadingDetailImplCopyWith(
    _$LoadingDetailImpl value,
    $Res Function(_$LoadingDetailImpl) then,
  ) = __$$LoadingDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingDetailImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$LoadingDetailImpl>
    implements _$$LoadingDetailImplCopyWith<$Res> {
  __$$LoadingDetailImplCopyWithImpl(
    _$LoadingDetailImpl _value,
    $Res Function(_$LoadingDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingDetailImpl implements _LoadingDetail {
  const _$LoadingDetailImpl();

  @override
  String toString() {
    return 'MovieState.loadingDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies, int currentPage)
    loadingMore,
    required TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )
    loaded,
    required TResult Function() loadingDetail,
    required TResult Function(MovieDetailEntity movie) detailLoaded,
    required TResult Function(String message) error,
  }) {
    return loadingDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult? Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult? Function()? loadingDetail,
    TResult? Function(MovieDetailEntity movie)? detailLoaded,
    TResult? Function(String message)? error,
  }) {
    return loadingDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult Function()? loadingDetail,
    TResult Function(MovieDetailEntity movie)? detailLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingDetail != null) {
      return loadingDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingDetail value) loadingDetail,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loadingDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingDetail value)? loadingDetail,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loadingDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingDetail value)? loadingDetail,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingDetail != null) {
      return loadingDetail(this);
    }
    return orElse();
  }
}

abstract class _LoadingDetail implements MovieState {
  const factory _LoadingDetail() = _$LoadingDetailImpl;
}

/// @nodoc
abstract class _$$DetailLoadedImplCopyWith<$Res> {
  factory _$$DetailLoadedImplCopyWith(
    _$DetailLoadedImpl value,
    $Res Function(_$DetailLoadedImpl) then,
  ) = __$$DetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDetailEntity movie});
}

/// @nodoc
class __$$DetailLoadedImplCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$DetailLoadedImpl>
    implements _$$DetailLoadedImplCopyWith<$Res> {
  __$$DetailLoadedImplCopyWithImpl(
    _$DetailLoadedImpl _value,
    $Res Function(_$DetailLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? movie = null}) {
    return _then(
      _$DetailLoadedImpl(
        movie:
            null == movie
                ? _value.movie
                : movie // ignore: cast_nullable_to_non_nullable
                    as MovieDetailEntity,
      ),
    );
  }
}

/// @nodoc

class _$DetailLoadedImpl implements _DetailLoaded {
  const _$DetailLoadedImpl({required this.movie});

  @override
  final MovieDetailEntity movie;

  @override
  String toString() {
    return 'MovieState.detailLoaded(movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLoadedImpl &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailLoadedImplCopyWith<_$DetailLoadedImpl> get copyWith =>
      __$$DetailLoadedImplCopyWithImpl<_$DetailLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies, int currentPage)
    loadingMore,
    required TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )
    loaded,
    required TResult Function() loadingDetail,
    required TResult Function(MovieDetailEntity movie) detailLoaded,
    required TResult Function(String message) error,
  }) {
    return detailLoaded(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult? Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult? Function()? loadingDetail,
    TResult? Function(MovieDetailEntity movie)? detailLoaded,
    TResult? Function(String message)? error,
  }) {
    return detailLoaded?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult Function()? loadingDetail,
    TResult Function(MovieDetailEntity movie)? detailLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingDetail value) loadingDetail,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Error value) error,
  }) {
    return detailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingDetail value)? loadingDetail,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return detailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingDetail value)? loadingDetail,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailLoaded implements MovieState {
  const factory _DetailLoaded({required final MovieDetailEntity movie}) =
      _$DetailLoadedImpl;

  MovieDetailEntity get movie;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailLoadedImplCopyWith<_$DetailLoadedImpl> get copyWith =>
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
    extends _$MovieStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieState
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
    return 'MovieState.error(message: $message)';
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

  /// Create a copy of MovieState
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
    required TResult Function(List<MovieEntity> movies, int currentPage)
    loadingMore,
    required TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )
    loaded,
    required TResult Function() loadingDetail,
    required TResult Function(MovieDetailEntity movie) detailLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult? Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult? Function()? loadingDetail,
    TResult? Function(MovieDetailEntity movie)? detailLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies, int currentPage)? loadingMore,
    TResult Function(
      List<MovieEntity> movies,
      int currentPage,
      bool hasNextPage,
    )?
    loaded,
    TResult Function()? loadingDetail,
    TResult Function(MovieDetailEntity movie)? detailLoaded,
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
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadingDetail value) loadingDetail,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadingDetail value)? loadingDetail,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadingDetail value)? loadingDetail,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MovieState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of MovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
