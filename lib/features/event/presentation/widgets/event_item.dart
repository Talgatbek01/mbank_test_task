import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../domain/entities/event_entity.dart';

class EventItem extends StatelessWidget {
  final EventEntity event;

  const EventItem({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(event.name),
      subtitle: Text(event.description),
      trailing: Text(DateFormat('dd-MM-yyyy').format(event.date)),
    );
  }
}
