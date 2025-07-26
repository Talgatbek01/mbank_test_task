import 'package:dio/dio.dart';

import '../../domain/entities/event_entity.dart';
import '../models/event_model.dart';

class EventDatasource {
  final Dio dio;

  EventDatasource(this.dio);

  Future<List<EventEntity>> getEventList({
    required DateTime startDate,
    DateTime? endDate,
  }) async {
    const url = '';
    final response = await dio.get(url);
    final data = response.data as List;

    return data.map((json) => EventModel.fromJson(json)).toList();
  }
}
