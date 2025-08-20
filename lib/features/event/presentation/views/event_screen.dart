import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/event_use_cases.dart';
import '../bloc/event_cubit.dart';
import '../widgets/date_range_selector.dart';
import '../widgets/event_item.dart';
import '../widgets/events_empty_widget.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  late DateTime _startDate;
  late DateTime? _endDate;

  @override
  void initState() {
    super.initState();
    _startDate = DateTime.now();
    _endDate = null;
    _getEvents(_startDate, _endDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Events Screen')),
      body: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: DateRangeSelector(
              startDate: _startDate,
              endDate: _endDate,
              onDateSelected: (start, end) {
                setState(() {
                  _startDate = start;
                  _endDate = end;
                });

                if (end != null) {
                  _getEvents(start, end);
                }
              },
            ),
          ),
          Expanded(
            child: BlocConsumer<EventCubit, EventState>(
              listenWhen: (previous, current) =>
                  previous.status != current.status,
              listener: (context, state) {
                if (state.status == EventStatus.error) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      content: Text(state.error ?? 'Что-то пошло не так'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _endDate = null;
                            });

                            _getEvents(_startDate, _endDate);

                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              builder: (context, state) {
                switch (state.status) {
                  case EventStatus.initial:
                    return Center(child: CircularProgressIndicator.adaptive());

                  case EventStatus.success:
                    if (state.events.isEmpty) {
                      return Center(child: EventsEmptyWidget());
                    }

                    return ListView.builder(
                      itemCount: state.events.length,
                      itemBuilder: (context, index) {
                        final event = state.events[index];

                        return EventItem(event: event);
                      },
                    );

                  case EventStatus.error:
                    return SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _getEvents(DateTime start, DateTime? end) {
    context.read<EventCubit>().getEventList(
      EventParams(startDate: start, endDate: end),
    );
  }
}
