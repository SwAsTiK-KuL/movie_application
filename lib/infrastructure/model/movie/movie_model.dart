import 'package:platform_commons/domain/entities/movie/movie_entity.dart';

class MovieModel extends MovieEntity {
  const MovieModel({
    required super.id,
    required super.title,
    required super.overview,
    required super.posterPath,
    required super.releaseDate,
    required super.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
    id: json['id'] as int,
    title: json['title'] as String? ?? '',
    overview: json['overview'] as String? ?? '',
    posterPath: json['poster_path'] as String? ?? '',
    releaseDate: json['release_date'] as String? ?? '',
    voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
  );
}

class MovieListModel extends MovieListEntity {
  const MovieListModel({
    required super.page,
    required super.totalPages,
    required super.movies,
  });

  factory MovieListModel.fromJson(Map<String, dynamic> json) => MovieListModel(
    page: json['page'] as int,
    totalPages: json['total_pages'] as int,
    movies:
        (json['results'] as List<dynamic>)
            .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
            .toList(),
  );
}
