import 'package:dartz/dartz.dart';
import 'package:platform_commons/core/error/failure.dart';
import 'package:platform_commons/domain/entities/bookmark/bookmark_entity.dart';
import 'package:platform_commons/domain/repository/bookmark/bookmark_repository.dart';
import 'package:platform_commons/infrastructure/data_source/bookmark/bookmark_local_data_source.dart';
import 'package:platform_commons/infrastructure/local/app_database.dart';

class BookmarkRepositoryImpl implements BookmarkRepository {
  final BookmarkLocalDataSource _local;
  final AppDatabase _db;

  BookmarkRepositoryImpl({
    required BookmarkLocalDataSource local,
    required AppDatabase db,
  }) : _local = local,
       _db = db;

  @override
  Future<Either<Failure, Unit>> addBookmark(BookmarkEntity bookmark) async {
    try {
      await _local.addBookmark(bookmark);
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeBookmark({
    required int localUserId,
    required int movieId,
  }) async {
    try {
      await _local.removeBookmark(localUserId: localUserId, movieId: movieId);
      return const Right(unit);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Bookmark>>> getBookmarksForUser(
    int localUserId,
  ) async {
    try {
      final result = await _local.getBookmarksByUser(localUserId);
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isBookmarked({
    required int localUserId,
    required int movieId,
  }) async {
    try {
      final result = await _local.isBookmarked(
        localUserId: localUserId,
        movieId: movieId,
      );
      return Right(result);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> syncPendingBookmarks() async {
    try {
      final unsyncedBookmarks = await _local.getUnsyncedBookmarks();

      for (final bookmark in unsyncedBookmarks) {
        final user = await _db.getUserByLocalId(bookmark.localUserId);

        if (user == null || user.remoteId == null) continue;

        await _local.markBookmarkSynced(
          localId: bookmark.localId,
          remoteId: 'remote_${bookmark.localId}',
          remoteUserId: user.remoteId!,
        );
      }
      return const Right(unit);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
