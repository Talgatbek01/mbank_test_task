import 'package:flutter/material.dart';

class EventErrorWidget extends StatelessWidget {
  final String error;

  const EventErrorWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Text(
      error,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
