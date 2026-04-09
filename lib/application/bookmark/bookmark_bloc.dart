import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platform_commons/domain/entities/bookmark/bookmark_entity.dart';
import 'package:platform_commons/domain/repository/bookmark/bookmark_repository.dart';
import 'package:platform_commons/infrastructure/local/app_database.dart';

part 'bookmark_bloc.freezed.dart';
part 'bookmark_event.dart';
part 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final BookmarkRepository _repository;

  BookmarkBloc(this._repository) : super(const BookmarkState.initial()) {
    on<_LoadBookmarks>(_onLoadBookmarks);
    on<_ToggleBookmark>(_onToggleBookmark);
    on<_SyncBookmarks>(_onSyncBookmarks);
  }

  Future<void> _onLoadBookmarks(
    _LoadBookmarks event,
    Emitter<BookmarkState> emit,
  ) async {
    emit(const BookmarkState.loading());
    final result = await _repository.getBookmarksForUser(event.localUserId);
    result.fold(
      (failure) => emit(BookmarkState.error(message: failure.message)),
      (bookmarks) => emit(BookmarkState.loaded(bookmarks: bookmarks)),
    );
  }

  Future<void> _onToggleBookmark(
    _ToggleBookmark event,
    Emitter<BookmarkState> emit,
  ) async {
    final isBookmarkedResult = await _repository.isBookmarked(
      localUserId: event.localUserId,
      movieId: event.movieId,
    );

    await isBookmarkedResult.fold(
      (failure) async => emit(BookmarkState.error(message: failure.message)),
      (isBookmarked) async {
        if (isBookmarked) {
          await _repository.removeBookmark(
            localUserId: event.localUserId,
            movieId: event.movieId,
          );
        } else {
          await _repository.addBookmark(
            BookmarkEntity(
              localUserId: event.localUserId,
              remoteUserId: event.remoteUserId,
              movieId: event.movieId,
              movieTitle: event.movieTitle,
              moviePoster: event.moviePoster,
              createdAt: DateTime.now(),
            ),
          );
        }
        final refreshed = await _repository.getBookmarksForUser(
          event.localUserId,
        );
        refreshed.fold(
          (f) => emit(BookmarkState.error(message: f.message)),
          (list) => emit(BookmarkState.loaded(bookmarks: list)),
        );
      },
    );
  }

  Future<void> _onSyncBookmarks(
    _SyncBookmarks event,
    Emitter<BookmarkState> emit,
  ) async {
    final result = await _repository.syncPendingBookmarks();
    result.fold(
      (failure) => emit(BookmarkState.error(message: failure.message)),
      (_) {},
    );
  }
}
