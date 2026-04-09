import 'package:dio/dio.dart';
import 'package:platform_commons/infrastructure/model/movie/movie_detail_model.dart';
import 'package:platform_commons/infrastructure/model/movie/movie_model.dart';

abstract class MovieRemoteDataSource {
  Future<MovieListModel> getTrendingMovies({required int page});
  Future<MovieDetailModel> getMovieDetail({required int movieId});
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final Dio _dio;

  MovieRemoteDataSourceImpl(this._dio);

  @override
  Future<MovieListModel> getTrendingMovies({required int page}) async {
    final response = await _dio.get(
      '/3/trending/movie/day',
      queryParameters: {'language': 'en-US', 'page': page},
    );
    return MovieListModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<MovieDetailModel> getMovieDetail({required int movieId}) async {
    final response = await _dio.get('/3/movie/$movieId');
    return MovieDetailModel.fromJson(response.data as Map<String, dynamic>);
  }
}
