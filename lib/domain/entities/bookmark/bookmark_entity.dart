class BookmarkEntity {
  final int? localId;
  final String? remoteId;
  final int localUserId;
  final String? remoteUserId;
  final int movieId;
  final String movieTitle;
  final String moviePoster;
  final bool isSynced;
  final DateTime createdAt;

  const BookmarkEntity({
    this.localId,
    this.remoteId,
    required this.localUserId,
    this.remoteUserId,
    required this.movieId,
    required this.movieTitle,
    required this.moviePoster,
    this.isSynced = false,
    required this.createdAt,
  });
}
