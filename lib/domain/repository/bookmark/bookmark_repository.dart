import 'package:dartz/dartz.dart';
import 'package:platform_commons/core/error/failure.dart';
import 'package:platform_commons/domain/entities/bookmark/bookmark_entity.dart';
import 'package:platform_commons/infrastructure/local/app_database.dart';

abstract class BookmarkRepository {
  Future<Either<Failure, Unit>> addBookmark(BookmarkEntity bookmark);
  Future<Either<Failure, Unit>> removeBookmark({
    required int localUserId,
    required int movieId,
  });
  Future<Either<Failure, List<Bookmark>>> getBookmarksForUser(int localUserId);
  Future<Either<Failure, bool>> isBookmarked({
    required int localUserId,
    required int movieId,
  });
  Future<Either<Failure, Unit>> syncPendingBookmarks();
}
