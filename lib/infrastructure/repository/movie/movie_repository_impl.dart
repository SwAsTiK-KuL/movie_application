import 'package:dartz/dartz.dart';
import 'package:platform_commons/core/error/exception.dart';
import 'package:platform_commons/core/error/failure.dart';
import 'package:platform_commons/domain/entities/movie/movie_detail_entity.dart';
import 'package:platform_commons/domain/entities/movie/movie_entity.dart';
import 'package:platform_commons/domain/repository/movie/movie_repository.dart';
import 'package:platform_commons/infrastructure/data_source/movie/movie_remote_data_source.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource _remote;

  MovieRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, MovieListEntity>> getTrendingMovies({
    required int page,
  }) async {
    try {
      final result = await _remote.getTrendingMovies(page: page);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MovieDetailEntity>> getMovieDetail({
    required int movieId,
  }) async {
    try {
      final result = await _remote.getMovieDetail(movieId: movieId);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
