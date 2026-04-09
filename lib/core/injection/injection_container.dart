import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:platform_commons/application/bookmark/bookmark_bloc.dart';
import 'package:platform_commons/application/create_user/create_user_bloc.dart';
import 'package:platform_commons/application/movie_bloc/movie_bloc.dart';
import 'package:platform_commons/application/user_bloc/user_bloc.dart';
import 'package:platform_commons/core/network/chaos_interceptor.dart';
import 'package:platform_commons/core/network/network_info.dart';
import 'package:platform_commons/core/network/retry_interceptor.dart';
import 'package:platform_commons/core/worker/sync_worker.dart';
import 'package:platform_commons/domain/repository/bookmark/bookmark_repository.dart';
import 'package:platform_commons/domain/repository/create_user/create_user_repository.dart';
import 'package:platform_commons/domain/repository/movie/movie_repository.dart';
import 'package:platform_commons/domain/repository/user/user_repository.dart';
import 'package:platform_commons/infrastructure/data_source/bookmark/bookmark_local_data_source.dart';
import 'package:platform_commons/infrastructure/data_source/create_user/create_user_local_data_source.dart';
import 'package:platform_commons/infrastructure/data_source/create_user/create_user_remote_data_source.dart';
import 'package:platform_commons/infrastructure/data_source/movie/movie_remote_data_source.dart';
import 'package:platform_commons/infrastructure/data_source/user/user_remote_data_source.dart';
import 'package:platform_commons/infrastructure/local/app_database.dart';
import 'package:platform_commons/infrastructure/repository/bookmark/bookmark_repository_impl.dart';
import 'package:platform_commons/infrastructure/repository/create_user/create_user_repository_impl.dart';
import 'package:platform_commons/infrastructure/repository/movie/movie_repository_impl.dart';
import 'package:platform_commons/infrastructure/repository/user/user_repository_impl.dart';
import 'package:workmanager/workmanager.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  _registerCore();
  _registerUserListFeature();
  _registerCreateUserFeature();
  _registerBookmarkFeature();
  _registerMovieFeature();
  await _registerWorkManager();
}

void _registerCore() {
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://reqres.in',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'x-api-key':
              'pub_6a1930d653fff4d2360e942cfb3ff6900a7265fef7e42aed6cc91cc1d959faa8',
        },
      ),
    );

    dio.interceptors.addAll([
      ChaosInterceptor(),
      RetryInterceptor(dio: dio),
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (log) => debugPrint(log.toString()),
      ),
    ]);

    return dio;
  });

  sl.registerLazySingleton<AppDatabase>(() => AppDatabase());
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(sl<Connectivity>()),
  );
}

void _registerUserListFeature() {
  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSourceImpl(sl<Dio>()),
  );
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(sl<UserRemoteDataSource>()),
  );
  sl.registerFactory<UserBloc>(() => UserBloc(sl<UserRepository>()));
}

void _registerCreateUserFeature() {
  sl.registerLazySingleton<CreateUserRemoteDataSource>(
    () => CreateUserRemoteDataSourceImpl(sl<Dio>()),
  );
  sl.registerLazySingleton<CreateUserLocalDataSource>(
    () => CreateUserLocalDataSourceImpl(sl<AppDatabase>()),
  );
  sl.registerLazySingleton<CreateUserRepository>(
    () => CreateUserRepositoryImpl(
      remote: sl<CreateUserRemoteDataSource>(),
      local: sl<CreateUserLocalDataSource>(),
      networkInfo: sl<NetworkInfo>(),
    ),
  );
  sl.registerFactory<CreateUserBloc>(
    () => CreateUserBloc(sl<CreateUserRepository>()),
  );
}

void _registerBookmarkFeature() {
  sl.registerLazySingleton<BookmarkLocalDataSource>(
    () => BookmarkLocalDataSourceImpl(sl<AppDatabase>()),
  );
  sl.registerLazySingleton<BookmarkRepository>(
    () => BookmarkRepositoryImpl(
      local: sl<BookmarkLocalDataSource>(),
      db: sl<AppDatabase>(),
    ),
  );
  sl.registerFactory<BookmarkBloc>(
    () => BookmarkBloc(sl<BookmarkRepository>()),
  );
}

void _registerMovieFeature() {
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1MTYzMjgxYWQ1NTdjODEwNGU1NjdiOTVjZWEwNjYyMCIsIm5iZiI6MTc3NTc1NjczOC4yMjQsInN1YiI6IjY5ZDdlNWMyYWRkNTc0YWMyZjE5MTUyOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.FT-zN-u4UADezonsgPK481qIrFF3dke3fe1bQ0iGYt0',
        },
      ),
    );

    dio.interceptors.addAll([
      ChaosInterceptor(),
      RetryInterceptor(dio: dio),
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (log) => debugPrint(log.toString()),
      ),
    ]);

    return dio;
  }, instanceName: 'tmdb');

  sl.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSourceImpl(sl<Dio>(instanceName: 'tmdb')),
  );
  sl.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(sl<MovieRemoteDataSource>()),
  );
  sl.registerFactory<MovieBloc>(() => MovieBloc(sl<MovieRepository>()));
}

Future<void> _registerWorkManager() async {
  await Workmanager().initialize(callbackDispatcher, isInDebugMode: false);
  await Workmanager().registerOneOffTask(
    syncTaskName,
    syncTaskName,
    initialDelay: const Duration(seconds: 10),
    constraints: Constraints(networkType: NetworkType.connected),
    existingWorkPolicy: ExistingWorkPolicy.replace,
  );
}
