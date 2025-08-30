import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'features/event/presentation/bloc/event_cubit.dart';

import 'features/prayer_time/presentation/cubit/prayer_cubit.dart';
import 'features/prayer_time/presentation/views/set_notification_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PrayerCubit>(create: (_) => getIt<PrayerCubit>()),
        BlocProvider<EventCubit>(create: (_) => getIt<EventCubit>()),
      ],
      child: MaterialApp(
        home: const SetNotificationScreen(),
        debugShowCheckedModeBanner: false,
        scrollBehavior: CupertinoScrollBehavior(),
      ),
    );
  }
}
