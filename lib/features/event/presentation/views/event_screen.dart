import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/event_cubit.dart';
import '../widgets/event_error_widget.dart';
import '../widgets/event_item.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  late DateTime _startDate;
  DateTime? _endDate;

  @override
  void initState() {
    super.initState();
    _startDate = DateTime.now();

    context.read<EventCubit>().getEventList(
      startDate: _startDate,
      endDate: _endDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Events Screen')),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<EventCubit, EventState>(
              builder: (context, state) {
                switch (state.status) {
                  case EventStatus.initial:
                    return Center(child: CircularProgressIndicator.adaptive());

                  case EventStatus.success:
                    return ListView.builder(
                      itemCount: state.events.length,
                      itemBuilder: (context, index) {
                        final event = state.events[index];

                        return EventItem(event: event);
                      },
                    );

                  case EventStatus.error:
                    return Center(
                      child: EventErrorWidget(
                        error: state.error ?? 'Что то пошло не так',
                      ),
                    );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
