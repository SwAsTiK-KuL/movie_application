import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platform_commons/application/bookmark/bookmark_bloc.dart';
import 'package:platform_commons/application/movie_bloc/movie_bloc.dart';
import 'package:platform_commons/core/injection/injection_container.dart';
import 'package:platform_commons/core/reconnecting_banner/reconnecting_banner.dart';
import 'package:platform_commons/domain/entities/movie/movie_entity.dart';
import 'package:platform_commons/infrastructure/local/app_database.dart';
import 'package:platform_commons/presentation/bookmark/bookmark_screen.dart';
import 'package:platform_commons/presentation/movie/movie_details_screen.dart';

class MovieListScreen extends StatelessWidget {
  final int localUserId;
  final String? remoteUserId;
  final String userName;

  const MovieListScreen({
    super.key,
    required this.localUserId,
    this.remoteUserId,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<MovieBloc>()..add(const MovieEvent.fetchMovies()),
        ),
        BlocProvider(
          create:
              (_) =>
                  sl<BookmarkBloc>()..add(
                    BookmarkEvent.loadBookmarks(localUserId: localUserId),
                  ),
        ),
      ],
      child: _MovieListView(
        localUserId: localUserId,
        remoteUserId: remoteUserId,
        userName: userName,
      ),
    );
  }
}

class _MovieListView extends StatefulWidget {
  final int localUserId;
  final String? remoteUserId;
  final String userName;

  const _MovieListView({
    required this.localUserId,
    required this.remoteUserId,
    required this.userName,
  });

  @override
  State<_MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends State<_MovieListView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final max = _scrollController.position.maxScrollExtent;
      final current = _scrollController.offset;
      if (current >= max - 300) {
        context.read<MovieBloc>().add(const MovieEvent.loadNextPage());
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: _buildAppBar(context),
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, movieState) {
          return BlocBuilder<BookmarkBloc, BookmarkState>(
            builder: (context, bookmarkState) {
              final bookmarks = bookmarkState.maybeWhen(
                loaded: (b) => b,
                orElse: () => <Bookmark>[],
              );
              final bookmarkedIds = bookmarks.map((b) => b.movieId).toSet();

              return ReconnectingBanner(
                isReconnecting: movieState.maybeWhen(
                  loadingMore: (_, __) => true,
                  orElse: () => false,
                ),
                child: movieState.when(
                  initial: () => const _EmptyView(),
                  loading: () => const _MovieGridShimmer(),
                  loadingMore:
                      (movies, _) => _MovieGrid(
                        movies: movies,
                        bookmarkedIds: bookmarkedIds,
                        scrollController: _scrollController,
                        isLoadingMore: true,
                        localUserId: widget.localUserId,
                        remoteUserId: widget.remoteUserId,
                      ),
                  loaded:
                      (movies, _, __) => _MovieGrid(
                        movies: movies,
                        bookmarkedIds: bookmarkedIds,
                        scrollController: _scrollController,
                        isLoadingMore: false,
                        localUserId: widget.localUserId,
                        remoteUserId: widget.remoteUserId,
                      ),
                  loadingDetail: () => const _MovieGridShimmer(),
                  detailLoaded:
                      (_) => _MovieGrid(
                        movies: context.read<MovieBloc>().lastLoadedMovies,
                        bookmarkedIds: bookmarkedIds,
                        scrollController: _scrollController,
                        isLoadingMore: false,
                        localUserId: widget.localUserId,
                        remoteUserId: widget.remoteUserId,
                      ),
                  error:
                      (message) => _ErrorView(
                        message: message,
                        onRetry:
                            () => context.read<MovieBloc>().add(
                              const MovieEvent.fetchMovies(),
                            ),
                      ),
                ),
              );
            },
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
            'Trending Today',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1D2E),
              letterSpacing: -0.5,
            ),
          ),
          Text(
            'Browsing as ${widget.userName}',
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF9EA3B0),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      actions: [
        BlocBuilder<BookmarkBloc, BookmarkState>(
          builder: (context, state) {
            final count = state.maybeWhen(
              loaded: (b) => b.length,
              orElse: () => 0,
            );
            return Stack(
              children: [
                IconButton(
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (_) => BlocProvider.value(
                                value: context.read<BookmarkBloc>(),
                                child: BookmarksScreen(
                                  userName: widget.userName,
                                ),
                              ),
                        ),
                      ),
                  icon: const Icon(
                    Icons.bookmark_rounded,
                    color: Color(0xFF6366F1),
                  ),
                ),
                if (count > 0)
                  Positioned(
                    right: 6,
                    top: 6,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEF4444),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '$count',
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
        const SizedBox(width: 4),
      ],
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

class _MovieGrid extends StatelessWidget {
  final List<MovieEntity> movies;
  final Set<int> bookmarkedIds;
  final ScrollController scrollController;
  final bool isLoadingMore;
  final int localUserId;
  final String? remoteUserId;

  const _MovieGrid({
    required this.movies,
    required this.bookmarkedIds,
    required this.scrollController,
    required this.isLoadingMore,
    required this.localUserId,
    required this.remoteUserId,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.58,
      ),
      itemCount: movies.length + (isLoadingMore ? 2 : 0),
      itemBuilder: (context, index) {
        if (index >= movies.length) return const _ShimmerMovieCard();
        final movie = movies[index];
        return GestureDetector(
          onTap: () {
            final movieBloc = context.read<MovieBloc>();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (_) => BlocProvider.value(
                      value: movieBloc,
                      child: MovieDetailScreen(
                        movieId: movie.id,
                        heroTag: 'movie_${movie.id}',
                      ),
                    ),
              ),
            );
          },
          child: _MovieCard(
            movie: movie,
            isBookmarked: bookmarkedIds.contains(movie.id),
            onBookmarkTap: () {
              context.read<BookmarkBloc>().add(
                BookmarkEvent.toggleBookmark(
                  localUserId: localUserId,
                  remoteUserId: remoteUserId,
                  movieId: movie.id,
                  movieTitle: movie.title,
                  moviePoster: movie.fullPosterUrl,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _MovieCard extends StatelessWidget {
  final MovieEntity movie;
  final bool isBookmarked;
  final VoidCallback onBookmarkTap;

  const _MovieCard({
    required this.movie,
    required this.isBookmarked,
    required this.onBookmarkTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  movie.posterPath.isNotEmpty
                      ? CachedNetworkImage(
                        imageUrl: movie.fullPosterUrl,
                        fit: BoxFit.cover,
                        placeholder: (_, __) => _PosterPlaceholder(),
                        errorWidget: (_, __, ___) => _PosterPlaceholder(),
                      )
                      : _PosterPlaceholder(),

                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: onBookmarkTap,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color:
                              isBookmarked
                                  ? const Color(0xFF6366F1)
                                  : Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Icon(
                          isBookmarked
                              ? Icons.bookmark_rounded
                              : Icons.bookmark_border_rounded,
                          size: 16,
                          color:
                              isBookmarked
                                  ? Colors.white
                                  : const Color(0xFF6366F1),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            size: 10,
                            color: Color(0xFFFBBF24),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            movie.voteAverage.toStringAsFixed(1),
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1D2E),
                      letterSpacing: -0.2,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    movie.year,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF9EA3B0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PosterPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF0F1F5),
      child: const Icon(
        Icons.movie_outlined,
        color: Color(0xFFCBCDD8),
        size: 36,
      ),
    );
  }
}

class _MovieGridShimmer extends StatelessWidget {
  const _MovieGridShimmer();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.58,
      ),
      itemCount: 6,
      itemBuilder: (_, __) => const _ShimmerMovieCard(),
    );
  }
}

class _ShimmerMovieCard extends StatelessWidget {
  const _ShimmerMovieCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFEEEFF4),
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 12,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEFF4),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  height: 10,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEFF4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No movies yet.', style: TextStyle(color: Color(0xFF9EA3B0))),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: const Color(0xFFFEF2F2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.movie_filter_outlined,
                color: Color(0xFFEF4444),
                size: 32,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Failed to load movies',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1D2E),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13, color: Color(0xFF9EA3B0)),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6366F1),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
