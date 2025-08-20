import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateRangeSelector extends StatefulWidget {
  final DateTime startDate;
  final DateTime? endDate;
  final Function(DateTime start, DateTime? end) onDateSelected;

  const DateRangeSelector({
    super.key,
    required this.onDateSelected,
    required this.startDate,
    this.endDate,
  });

  @override
  State<DateRangeSelector> createState() => _DateRangeSelectorState();
}

class _DateRangeSelectorState extends State<DateRangeSelector> {
  @override
  Widget build(BuildContext context) {
    log('date selector build');
    final now = DateTime.now();

    final formatter = DateFormat('dd-MM-yyyy');

    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
          onPressed: () async {
            final result = await showDatePicker(
              context: context,
              initialDate: widget.startDate,
              firstDate: now,
              lastDate: now.add(const Duration(days: 365)),
            );

            if (result != null && context.mounted) {
              widget.onDateSelected(result, widget.endDate);
            }
          },
          child: Text('Начальная дата: ${formatter.format(widget.startDate)}'),
        ),
        ElevatedButton(
          onPressed: () async {
            final result = await showDatePicker(
              context: context,
              initialDate: widget.endDate,
              firstDate: widget.startDate,
              lastDate: widget.startDate.add(const Duration(days: 365)),
            );

            if (result != null && context.mounted) {
              widget.onDateSelected(widget.startDate, result);
            }
          },
          child: Text(
            widget.endDate == null
                ? 'Выбрать конечную дату'
                : 'Конечная дата: ${formatter.format(widget.endDate!)}',
          ),
        ),
      ],
    );
  }
}
