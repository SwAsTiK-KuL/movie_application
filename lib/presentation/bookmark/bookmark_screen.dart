import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platform_commons/application/bookmark/bookmark_bloc.dart';
import 'package:platform_commons/infrastructure/local/app_database.dart';

class BookmarksScreen extends StatelessWidget {
  final String userName;

  const BookmarksScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: _buildAppBar(context),
      body: BlocBuilder<BookmarkBloc, BookmarkState>(
        builder: (context, state) {
          return state.when(
            initial: () => const _EmptyBookmarksView(),
            loading: () => const _LoadingView(),
            loaded:
                (bookmarks) =>
                    bookmarks.isEmpty
                        ? const _EmptyBookmarksView()
                        : _BookmarkListView(bookmarks: bookmarks),
            error: (message) => _ErrorView(message: message),
          );
        },
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Color(0xFF1A1D2E),
          size: 20,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bookmarks',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1D2E),
              letterSpacing: -0.5,
            ),
          ),
          Text(
            userName,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF9EA3B0),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: ColoredBox(
          color: Color(0xFFEEEFF4),
          child: SizedBox(height: 1, width: double.infinity),
        ),
      ),
    );
  }
}

class _BookmarkListView extends StatelessWidget {
  final List<Bookmark> bookmarks;

  const _BookmarkListView({required this.bookmarks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      itemCount: bookmarks.length,
      itemBuilder:
          (context, index) => _BookmarkCard(bookmark: bookmarks[index]),
    );
  }
}

class _BookmarkCard extends StatelessWidget {
  final Bookmark bookmark;

  const _BookmarkCard({required this.bookmark});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1A1D2E).withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            // Poster thumbnail
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 56,
                height: 72,
                child: Image.network(
                  bookmark.moviePoster,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (_, __, ___) => Container(
                        color: const Color(0xFFF0F1F5),
                        child: const Icon(
                          Icons.movie_outlined,
                          color: Color(0xFFCBCDD8),
                          size: 24,
                        ),
                      ),
                ),
              ),
            ),
            const SizedBox(width: 14),
            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookmark.movieTitle,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1D2E),
                      letterSpacing: -0.2,
                    ),
                  ),
                  const SizedBox(height: 6),
                  _SyncBadge(isSynced: bookmark.isSynced),
                  const SizedBox(height: 6),
                  Text(
                    'Saved ${_formatDate(bookmark.createdAt)}',
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF9EA3B0),
                    ),
                  ),
                ],
              ),
            ),
            // Remove bookmark
            IconButton(
              onPressed: () {
                context.read<BookmarkBloc>().add(
                  BookmarkEvent.toggleBookmark(
                    localUserId: bookmark.localUserId,
                    remoteUserId: bookmark.remoteUserId,
                    movieId: bookmark.movieId,
                    movieTitle: bookmark.movieTitle,
                    moviePoster: bookmark.moviePoster,
                  ),
                );
              },
              icon: const Icon(
                Icons.bookmark_remove_rounded,
                color: Color(0xFFEF4444),
                size: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime dt) {
    final now = DateTime.now();
    final diff = now.difference(dt);
    if (diff.inMinutes < 1) return 'just now';
    if (diff.inHours < 1) return '${diff.inMinutes}m ago';
    if (diff.inDays < 1) return '${diff.inHours}h ago';
    return '${diff.inDays}d ago';
  }
}

class _SyncBadge extends StatelessWidget {
  final bool isSynced;

  const _SyncBadge({required this.isSynced});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: isSynced ? const Color(0xFFECFDF5) : const Color(0xFFFFFBEB),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isSynced ? Icons.cloud_done_rounded : Icons.cloud_off_rounded,
            size: 11,
            color: isSynced ? const Color(0xFF10B981) : const Color(0xFFF59E0B),
          ),
          const SizedBox(width: 4),
          Text(
            isSynced ? 'Synced' : 'Pending sync',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color:
                  isSynced ? const Color(0xFF10B981) : const Color(0xFFF59E0B),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Color(0xFF6366F1),
        strokeWidth: 2.5,
      ),
    );
  }
}

class _EmptyBookmarksView extends StatelessWidget {
  const _EmptyBookmarksView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: const Color(0xFFEEF2FF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.bookmark_border_rounded,
              color: Color(0xFF6366F1),
              size: 32,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'No bookmarks yet',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1D2E),
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Tap the bookmark icon on any movie\nto save it here.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: Color(0xFF9EA3B0)),
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;

  const _ErrorView({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(color: Color(0xFFEF4444), fontSize: 13),
      ),
    );
  }
}
