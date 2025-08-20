import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/api_error.dart';
import '../../../../core/error/exception.dart';
import '../../domain/use_cases/event_use_cases.dart';
import '../models/event_model.dart';

import 'event_api_client.dart';

abstract class EventRemoteDataSource {
  Future<List<EventModel>> getEvents(EventParams params);
  Future<EventModel> createEvent(EventModel event);
  Future<EventModel> updateEvent(int id, EventModel event);
  Future<void> delete(int id);
}

@LazySingleton(as: EventRemoteDataSource)
class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final EventApiClient client;

  EventRemoteDataSourceImpl(this.client);

  @override
  Future<List<EventModel>> getEvents(EventParams params) async {
    final formatter = DateFormat('dd-MM-yyyy');
    try {
      return await client.getEvents(
        formatter.format(params.startDate),
        params.endDate != null ? formatter.format(params.endDate!) : null,
      );
    } on DioException catch (e) {
      if (e.response?.data != null) {
        final apiError = ApiError.fromJson(e.response!.data);
        throw ServerException(apiError.allMessages);
      }
      throw ServerException(e.message);
    }
  }

  @override
  Future<EventModel> createEvent(EventModel event) async {
    return await client.createEvent(event);
  }

  @override
  Future<EventModel> updateEvent(int id, EventModel event) async {
    return await client.updateEvent(id, event.toJson());
  }

  @override
  Future<void> delete(int id) async {
    return await client.deleteEvent(id);
  }
}
