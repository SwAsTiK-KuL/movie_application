import 'package:dartz/dartz.dart';
import 'package:platform_commons/core/error/failure.dart';
import 'package:platform_commons/domain/entities/movie/movie_detail_entity.dart';
import 'package:platform_commons/domain/entities/movie/movie_entity.dart';

abstract class MovieRepository {
  Future<Either<Failure, MovieListEntity>> getTrendingMovies({
    required int page,
  });

  Future<Either<Failure, MovieDetailEntity>> getMovieDetail({
    required int movieId,
  });
}
