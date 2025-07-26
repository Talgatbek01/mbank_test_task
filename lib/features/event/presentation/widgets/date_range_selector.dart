import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateRangeSelector extends StatefulWidget {
  final Function(DateTime start, DateTime? end) onDateSelected;

  const DateRangeSelector({super.key, required this.onDateSelected});

  @override
  State<DateRangeSelector> createState() => _DateRangeSelectorState();
}

class _DateRangeSelectorState extends State<DateRangeSelector> {
  DateTime _startDate = DateTime.now();
  DateTime? _endDate;

  void _selectStartDate() async {
    final now = DateTime.now();
    final result = await showDatePicker(
      context: context,
      initialDate: _startDate,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 1),
    );

    if (result != null) {
      setState(() {
        _startDate = result;
      });
    }

    widget.onDateSelected.call(_startDate, _endDate);
  }

  /* Специально пропустил проверки (_startDate > _endDate просто визуальная проверка)
    а так используется (after, before)
    чтобы соответствовать требованием задачи. Тут если (after, before) (_startDate > _endDate)
    то со стороны сервера дает ошибку и мы парсим этот ошибку и показываем юзеру */

  void _selectEndDate() async {
    final now = DateTime.now();
    final result = await showDatePicker(
      context: context,
      initialDate: _endDate ?? _startDate,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 1),
    );

    if (result != null) {
      setState(() {
        _endDate = result;
      });
    }

    widget.onDateSelected.call(_startDate, _endDate);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        ElevatedButton(
          onPressed: _selectStartDate,
          child: Text(
            'Начальная дата: ${DateFormat('dd-MM-yyyy').format(_startDate)}',
          ),
        ),
        ElevatedButton(
          onPressed: _selectEndDate,
          child: Text(
            _endDate == null
                ? 'Выбрать конечную дату'
                : 'Конечная дата: ${DateFormat('dd-MM-yyyy').format(_endDate!)}',
          ),
        ),
      ],
    );
  }
}
