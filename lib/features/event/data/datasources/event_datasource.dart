import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/event_entity.dart';
import '../models/event_model.dart';

class EventDatasource {
  final Dio dio;

  EventDatasource(this.dio);

  Future<List<EventEntity>> getEventList({
    required DateTime startDate,
    DateTime? endDate,
  }) async {
    const url = 'api/test-task';
    final formatter = DateFormat('dd-MM-yyyy');
    final params = {
      'start_date': formatter.format(startDate),
      if (endDate != null) 'end_date': formatter.format(endDate),
    };

    try {
      final response = await dio.get(url, queryParameters: params);
      final data = response.data as List;

      return data.map((json) => EventModel.fromJson(json)).toList();
    } catch (e) {
      throw '$e';
    }
  }
}
