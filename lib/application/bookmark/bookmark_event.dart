part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.loadBookmarks({required int localUserId}) =
      _LoadBookmarks;

  const factory BookmarkEvent.toggleBookmark({
    required int localUserId,
    required String? remoteUserId,
    required int movieId,
    required String movieTitle,
    required String moviePoster,
  }) = _ToggleBookmark;

  const factory BookmarkEvent.syncBookmarks() = _SyncBookmarks;
}
