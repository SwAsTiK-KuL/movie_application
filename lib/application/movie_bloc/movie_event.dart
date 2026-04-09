part of 'movie_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
  const factory MovieEvent.fetchMovies() = _FetchMovies;
  const factory MovieEvent.loadNextPage() = _LoadNextPage;
  const factory MovieEvent.fetchDetail({required int movieId}) = _FetchDetail;
}
