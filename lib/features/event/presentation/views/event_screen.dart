import 'package:flutter/material.dart';

import '../../domain/entities/event_entity.dart';
import '../widgets/event_item.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Events Screen')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                final event = index + 1;

                return EventItem(
                  event: EventEntity(
                    name: 'Event $event',
                    description: 'Description' * event,
                    date: DateTime.now(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
