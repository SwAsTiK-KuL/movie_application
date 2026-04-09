class MovieEntity {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;

  const MovieEntity({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  String get fullPosterUrl => 'https://image.tmdb.org/t/p/w500$posterPath';

  String get year =>
      releaseDate.isNotEmpty ? releaseDate.substring(0, 4) : 'N/A';
}

class MovieListEntity {
  final int page;
  final int totalPages;
  final List<MovieEntity> movies;

  const MovieListEntity({
    required this.page,
    required this.totalPages,
    required this.movies,
  });

  bool get hasNextPage => page < totalPages;
}
