class MovieDetailEntity {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final double voteAverage;
  final int runtime;
  final List<String> genres;
  final String status;
  final String tagline;

  const MovieDetailEntity({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.releaseDate,
    required this.voteAverage,
    required this.runtime,
    required this.genres,
    required this.status,
    required this.tagline,
  });

  String get fullPosterUrl => 'https://image.tmdb.org/t/p/w185$posterPath';

  String get fullBackdropUrl => 'https://image.tmdb.org/t/p/w780$backdropPath';

  String get year =>
      releaseDate.isNotEmpty ? releaseDate.substring(0, 4) : 'N/A';

  String get runtimeFormatted {
    final h = runtime ~/ 60;
    final m = runtime % 60;
    return h > 0 ? '${h}h ${m}m' : '${m}m';
  }
}
