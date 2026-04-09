part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;

  const factory MovieState.loading() = _Loading;

  const factory MovieState.loadingMore({
    required List<MovieEntity> movies,
    required int currentPage,
  }) = _LoadingMore;

  const factory MovieState.loaded({
    required List<MovieEntity> movies,
    required int currentPage,
    required bool hasNextPage,
  }) = _Loaded;

  const factory MovieState.loadingDetail() = _LoadingDetail;

  const factory MovieState.detailLoaded({required MovieDetailEntity movie}) =
      _DetailLoaded;

  const factory MovieState.error({required String message}) = _Error;
}
