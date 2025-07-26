import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/service_locator/get_it.dart';
import 'features/event/presentation/bloc/event_cubit.dart';
import 'features/event/presentation/views/event_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EventCubit>(),
      child: MaterialApp(home: const EventScreen()),
    );
  }
}
