part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = _Initial;
  const factory BookmarkState.loading() = _Loading;
  const factory BookmarkState.loaded({required List<Bookmark> bookmarks}) =
      _Loaded;
  const factory BookmarkState.error({required String message}) = _Error;
}
