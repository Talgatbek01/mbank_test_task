import 'dart:io';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/error_parser.dart';
import '../../../../core/error/failure.dart';
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

    print('$params');

    try {
      final response = await dio.get(url, queryParameters: params);
      final data = response.data;

      final failure = errorParser(data);
      if (failure != null) throw failure;

      if (data is List) {
        return data.map((json) => EventModel.fromJson(json)).toList();
      } else {
        throw Failure('Неправильный формат данных');
      }
    } on DioException catch (dioError) {
      if (dioError.error is SocketException) {
        throw Failure('Нет подключение к интернету');
      } else {
        throw Failure('${dioError.message}');
      }
    } catch (e) {
      throw Failure('$e');
    }
  }
}
