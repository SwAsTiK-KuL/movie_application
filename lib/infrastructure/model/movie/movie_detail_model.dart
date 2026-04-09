import 'package:platform_commons/domain/entities/movie/movie_detail_entity.dart';

class MovieDetailModel extends MovieDetailEntity {
  const MovieDetailModel({
    required super.id,
    required super.title,
    required super.overview,
    required super.posterPath,
    required super.backdropPath,
    required super.releaseDate,
    required super.voteAverage,
    required super.runtime,
    required super.genres,
    required super.status,
    required super.tagline,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailModel(
        id: json['id'] as int,
        title: json['title'] as String? ?? '',
        overview: json['overview'] as String? ?? '',
        posterPath: json['poster_path'] as String? ?? '',
        backdropPath: json['backdrop_path'] as String? ?? '',
        releaseDate: json['release_date'] as String? ?? '',
        voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
        runtime: json['runtime'] as int? ?? 0,
        genres:
            (json['genres'] as List<dynamic>?)
                ?.map((g) => g['name'] as String)
                .toList() ??
            [],
        status: json['status'] as String? ?? '',
        tagline: json['tagline'] as String? ?? '',
      );
}
