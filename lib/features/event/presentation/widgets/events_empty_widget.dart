import 'package:flutter/material.dart';

class EventsEmptyWidget extends StatelessWidget {
  const EventsEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.event_busy_outlined, size: 50),
        const Text(
          'Events not found\nPlease try the choose another dates',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
