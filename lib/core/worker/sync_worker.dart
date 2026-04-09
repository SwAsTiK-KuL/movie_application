import 'package:platform_commons/core/injection/injection_container.dart';
import 'package:platform_commons/domain/repository/bookmark/bookmark_repository.dart';
import 'package:platform_commons/domain/repository/create_user/create_user_repository.dart';
import 'package:workmanager/workmanager.dart';

const syncTaskName = 'syncPendingUsersTask';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) async {
    if (taskName == syncTaskName) {
      await initDependencies();

      final userRepo = sl<CreateUserRepository>();
      await userRepo.syncPendingUsers();

      final bookmarkRepo = sl<BookmarkRepository>();
      await bookmarkRepo.syncPendingBookmarks();

      return true;
    }
    return true;
  });
}
