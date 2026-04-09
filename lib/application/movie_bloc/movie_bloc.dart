import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platform_commons/domain/entities/movie/movie_detail_entity.dart';
import 'package:platform_commons/domain/entities/movie/movie_entity.dart';
import 'package:platform_commons/domain/repository/movie/movie_repository.dart';

part 'movie_bloc.freezed.dart';
part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository _repository;

  int _currentPage = 1;
  final List<MovieEntity> _movies = [];
  List<MovieEntity> _lastLoadedMovies = [];

  List<MovieEntity> get lastLoadedMovies => List.from(_lastLoadedMovies);

  MovieBloc(this._repository) : super(const MovieState.initial()) {
    on<_FetchMovies>(_onFetchMovies);
    on<_LoadNextPage>(_onLoadNextPage);
    on<_FetchDetail>(_onFetchDetail);
  }

  Future<void> _onFetchMovies(
    _FetchMovies event,
    Emitter<MovieState> emit,
  ) async {
    _currentPage = 1;
    _movies.clear();
    emit(const MovieState.loading());

    final result = await _repository.getTrendingMovies(page: _currentPage);

    result.fold((failure) => emit(MovieState.error(message: failure.message)), (
      data,
    ) {
      _movies.addAll(data.movies);
      _lastLoadedMovies = List.from(_movies);
      emit(
        MovieState.loaded(
          movies: List.from(_movies),
          currentPage: _currentPage,
          hasNextPage: data.hasNextPage,
        ),
      );
    });
  }

  Future<void> _onLoadNextPage(
    _LoadNextPage event,
    Emitter<MovieState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _Loaded || !currentState.hasNextPage) return;

    _currentPage++;
    emit(
      MovieState.loadingMore(
        movies: List.from(_movies),
        currentPage: _currentPage,
      ),
    );

    final result = await _repository.getTrendingMovies(page: _currentPage);

    result.fold(
      (failure) {
        _currentPage--;

        emit(
          MovieState.loaded(
            movies: List.from(_movies),
            currentPage: _currentPage,
            hasNextPage: true,
          ),
        );
      },
      (data) {
        final existingIds = _movies.map((m) => m.id).toSet();
        final newMovies =
            data.movies.where((m) => !existingIds.contains(m.id)).toList();

        _movies.addAll(newMovies);
        _lastLoadedMovies = List.from(_movies);
        emit(
          MovieState.loaded(
            movies: List.from(_movies),
            currentPage: _currentPage,
            hasNextPage: data.hasNextPage,
          ),
        );
      },
    );
  }

  Future<void> _onFetchDetail(
    _FetchDetail event,
    Emitter<MovieState> emit,
  ) async {
    emit(const MovieState.loadingDetail());

    final result = await _repository.getMovieDetail(movieId: event.movieId);

    result.fold(
      (failure) => emit(MovieState.error(message: failure.message)),
      (movie) => emit(MovieState.detailLoaded(movie: movie)),
    );
  }
}
