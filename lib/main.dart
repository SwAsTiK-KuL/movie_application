import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platform_commons/application/user_bloc/user_bloc.dart';
import 'package:platform_commons/core/injection/injection_container.dart';
import 'package:platform_commons/presentation/user/user_list_screen.dart';
import 'package:workmanager/workmanager.dart';

import 'core/worker/sync_worker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  await Workmanager().initialize(callbackDispatcher);
  await Workmanager().registerOneOffTask(
    syncTaskName,
    syncTaskName,
    constraints: Constraints(networkType: NetworkType.connected),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform Commons',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
      ),
      home: BlocProvider(
        create: (_) => sl<UserBloc>(),
        child: const UserListScreen(),
      ),
    );
  }
}
