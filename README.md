# Platform Commons — Flutter Developer Assignment

## Description
A Flutter application built with Clean Architecture (BLoC/Freezed) that allows
users to browse a paginated list of users, add new users with offline support,
browse trending movies, and bookmark movies — all with full offline-first support.

## Architecture
- **Pattern**: Clean Architecture (Domain / Infrastructure / Presentation)
- **State Management**: flutter_bloc + Freezed
- **DI**: GetIt
- **Networking**: Dio with ChaosInterceptor (30% failure) + RetryInterceptor (exponential backoff)
- **Local DB**: Drift (SQLite) — PendingUsers + Bookmarks tables
- **Background Sync**: WorkManager — syncs users first, then bookmarks

## APIs Used
- **Users**: reqres.in (paginated list + POST)
- **Movies**: TMDB API (trending + detail)

## Key Assumptions
- TMDB Bearer token used instead of query param API key (v4 auth)
- WorkManager sync order: users → bookmarks (ensures remoteUserId is available)
- ChaosInterceptor applies to GET requests only (not POST/PUT)
- Offline bookmarks are linked by localUserId until sync completes
- Exponential backoff: 500ms → 1s → 2s → 4s (4 max retries)

## Offline Flow
1. Create user offline → saved to Drift with `isSynced: false`
2. Navigate to movies → bookmark saved with `localUserId`
3. On connectivity restore → WorkManager fires
4. Users synced first → `remoteId` written back
5. Bookmarks synced with correct `remoteUserId` → no relationship errors
