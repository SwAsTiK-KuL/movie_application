import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platform_commons/application/create_user/create_user_bloc.dart';
import 'package:platform_commons/application/user_bloc/user_bloc.dart';
import 'package:platform_commons/core/injection/injection_container.dart';
import 'package:platform_commons/core/reconnecting_banner/reconnecting_banner.dart';
import 'package:platform_commons/domain/entities/user/user_entities.dart';
import 'package:platform_commons/presentation/bookmark/movie_list_screen.dart';
import 'package:platform_commons/presentation/create_user/create_user_screen.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(const UserEvent.fetchUsers());

    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final currentScroll = _scrollController.offset;
      if (currentScroll >= maxScroll - 200) {
        context.read<UserBloc>().add(const UserEvent.loadNextPage());
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
      appBar: _buildAppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF6366F1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (_) => BlocProvider(
                    create: (_) => sl<CreateUserBloc>(),
                    child: const CreateUserScreen(),
                  ),
            ),
          );
        },
        child: const Icon(Icons.person_add_rounded, color: Colors.white),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          final isReconnecting = state.maybeWhen(
            loadingMore: (_, __) => true,
            orElse: () => false,
          );
          return ReconnectingBanner(
            isReconnecting: isReconnecting,
            child: state.when(
              initial: () => const _EmptyView(),
              loading: () => const _LoadingView(),
              loadingMore:
                  (users, _) => _UserListView(
                    users: users,
                    scrollController: _scrollController,
                    isLoadingMore: true,
                  ),
              loaded:
                  (users, _, __) => _UserListView(
                    users: users,
                    scrollController: _scrollController,
                    isLoadingMore: false,
                  ),
              error:
                  (message) => _ErrorView(
                    message: message,
                    onRetry:
                        () => context.read<UserBloc>().add(
                          const UserEvent.fetchUsers(),
                        ),
                  ),
            ),
          );
        },
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Team Members',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1D2E),
              letterSpacing: -0.5,
            ),
          ),
          Text(
            'reqres.in users',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF9EA3B0),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(color: const Color(0xFFEEEFF4), height: 1),
      ),
    );
  }
}

class _UserListView extends StatelessWidget {
  final List<UserEntity> users;
  final ScrollController scrollController;
  final bool isLoadingMore;

  const _UserListView({
    required this.users,
    required this.scrollController,
    required this.isLoadingMore,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      itemCount: users.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == users.length) {
          return const _BottomLoader();
        }
        return _UserCard(user: users[index]);
      },
    );
  }
}

class _UserCard extends StatelessWidget {
  final UserEntity user;

  const _UserCard({required this.user});

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
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (_) => MovieListScreen(
                      localUserId: user.id,
                      remoteUserId: null,
                      userName: user.fullName,
                    ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                _Avatar(avatarUrl: user.avatar),
                const SizedBox(width: 16),
                Expanded(child: _UserInfo(user: user)),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Color(0xFFCBCDD8),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final String avatarUrl;

  const _Avatar({required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFEEEFF4), width: 2),
      ),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: avatarUrl,
          fit: BoxFit.cover,
          placeholder:
              (_, __) => Container(
                color: const Color(0xFFF0F1F5),
                child: const Icon(
                  Icons.person_outline_rounded,
                  color: Color(0xFFCBCDD8),
                  size: 24,
                ),
              ),
          errorWidget:
              (_, __, ___) => Container(
                color: const Color(0xFFF0F1F5),
                child: const Icon(
                  Icons.broken_image_outlined,
                  color: Color(0xFFCBCDD8),
                  size: 24,
                ),
              ),
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  final UserEntity user;

  const _UserInfo({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.fullName,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A1D2E),
            letterSpacing: -0.2,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            const Icon(
              Icons.alternate_email_rounded,
              size: 12,
              color: Color(0xFF9EA3B0),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                user.email,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF9EA3B0),
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        _IdBadge(id: user.id),
      ],
    );
  }
}

class _IdBadge extends StatelessWidget {
  final int id;

  const _IdBadge({required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF2FF),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        'ID #$id',
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: Color(0xFF6366F1),
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      itemCount: 6,
      itemBuilder: (_, __) => const _ShimmerCard(),
    );
  }
}

class _ShimmerCard extends StatefulWidget {
  const _ShimmerCard();

  @override
  State<_ShimmerCard> createState() => _ShimmerCardState();
}

class _ShimmerCardState extends State<_ShimmerCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _animation = Tween<double>(
      begin: 0.4,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder:
          (_, __) => Opacity(
            opacity: _animation.value,
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  // Avatar shimmer
                  Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFEEEFF4),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Text shimmer
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 14,
                          width: 140,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEEFF4),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 12,
                          width: 200,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEEFF4),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 20,
                          width: 52,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEEFF4),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

class _BottomLoader extends StatelessWidget {
  const _BottomLoader();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2.5,
            color: Color(0xFF6366F1),
          ),
        ),
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
                Icons.wifi_off_rounded,
                color: Color(0xFFEF4444),
                size: 32,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Something went wrong',
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

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No users yet.', style: TextStyle(color: Color(0xFF9EA3B0))),
    );
  }
}
