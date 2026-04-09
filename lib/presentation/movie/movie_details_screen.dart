import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platform_commons/application/movie_bloc/movie_bloc.dart';
import 'package:platform_commons/domain/entities/movie/movie_detail_entity.dart';

class MovieDetailScreen extends StatelessWidget {
  final int movieId;
  final String heroTag;

  const MovieDetailScreen({
    super.key,
    required this.movieId,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:
          context.read<MovieBloc>()
            ..add(MovieEvent.fetchDetail(movieId: movieId)),
      child: const _MovieDetailView(),
    );
  }
}

class _MovieDetailView extends StatelessWidget {
  const _MovieDetailView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: BlocBuilder<MovieBloc, MovieState>(
        buildWhen:
            (prev, curr) => curr.maybeWhen(
              loadingDetail: () => true,
              detailLoaded: (_) => true,
              error: (_) => true,
              orElse: () => false,
            ),
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const SizedBox.shrink(),
            loadingMore: (_, __) => const SizedBox.shrink(),
            loaded: (_, __, ___) => const SizedBox.shrink(),
            loadingDetail: () => const _DetailShimmer(),
            detailLoaded: (movie) => _DetailContent(movie: movie),
            error:
                (message) => _ErrorView(
                  message: message,
                  onRetry:
                      () => context.read<MovieBloc>().add(
                        MovieEvent.fetchDetail(movieId: 0),
                      ),
                ),
          );
        },
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  final MovieDetailEntity movie;

  const _DetailContent({required this.movie});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 280,
          pinned: true,
          backgroundColor: const Color(0xFF1A1D2E),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                // Backdrop
                movie.backdropPath.isNotEmpty
                    ? Image.network(
                      movie.fullBackdropUrl,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (_, __, ___) =>
                              Container(color: const Color(0xFF1A1D2E)),
                    )
                    : Container(color: const Color(0xFF1A1D2E)),
                // Gradient overlay
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        const Color(0xFF1A1D2E).withOpacity(0.8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: 100,
                        height: 150,
                        child:
                            movie.posterPath.isNotEmpty
                                ? Image.network(
                                  movie.fullPosterUrl,
                                  fit: BoxFit.cover,
                                  errorBuilder:
                                      (_, __, ___) => Container(
                                        color: const Color(0xFFF0F1F5),
                                        child: const Icon(
                                          Icons.movie_outlined,
                                          color: Color(0xFFCBCDD8),
                                        ),
                                      ),
                                )
                                : Container(
                                  color: const Color(0xFFF0F1F5),
                                  child: const Icon(Icons.movie_outlined),
                                ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1A1D2E),
                              letterSpacing: -0.5,
                              height: 1.3,
                            ),
                          ),
                          if (movie.tagline.isNotEmpty) ...[
                            const SizedBox(height: 6),
                            Text(
                              '"${movie.tagline}"',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF9EA3B0),
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                          const SizedBox(height: 12),
                          _InfoRow(
                            icon: Icons.calendar_today_rounded,
                            label: movie.releaseDate,
                          ),
                          const SizedBox(height: 6),
                          _InfoRow(
                            icon: Icons.schedule_rounded,
                            label: movie.runtimeFormatted,
                          ),
                          const SizedBox(height: 6),
                          _InfoRow(
                            icon: Icons.info_outline_rounded,
                            label: movie.status,
                          ),
                          const SizedBox(height: 12),
                          // Rating
                          Row(
                            children: [
                              const Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFBBF24),
                                size: 18,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                movie.voteAverage.toStringAsFixed(1),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1A1D2E),
                                ),
                              ),
                              const Text(
                                ' / 10',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF9EA3B0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                if (movie.genres.isNotEmpty) ...[
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children:
                        movie.genres.map((g) => _GenreBadge(genre: g)).toList(),
                  ),
                  const SizedBox(height: 20),
                ],

                Container(height: 1, color: const Color(0xFFEEEFF4)),
                const SizedBox(height: 20),

                const Text(
                  'Overview',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1D2E),
                    letterSpacing: -0.3,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  movie.overview.isNotEmpty
                      ? movie.overview
                      : 'No overview available.',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4B5066),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoRow({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 13, color: const Color(0xFF9EA3B0)),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontSize: 12, color: Color(0xFF9EA3B0)),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _GenreBadge extends StatelessWidget {
  final String genre;

  const _GenreBadge({required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF2FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0xFF6366F1),
        ),
      ),
    );
  }
}

class _DetailShimmer extends StatelessWidget {
  const _DetailShimmer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 280, color: const Color(0xFFEEEFF4)),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEFF4),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ShimmerBox(width: double.infinity, height: 20),
                    const SizedBox(height: 8),
                    _ShimmerBox(width: 140, height: 14),
                    const SizedBox(height: 8),
                    _ShimmerBox(width: 100, height: 14),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ShimmerBox extends StatelessWidget {
  final double width;
  final double height;

  const _ShimmerBox({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFFEEEFF4),
        borderRadius: BorderRadius.circular(6),
      ),
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
              'Failed to load details',
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
