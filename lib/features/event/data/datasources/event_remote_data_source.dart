import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../../../core/error/exception.dart';
import '../../domain/use_cases/event_use_cases.dart';
import '../models/event_model.dart';

abstract class EventRemoteDataSource {
  Future<List<EventModel>> getEvents(EventParams params);
}

@LazySingleton(as: EventRemoteDataSource)
class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final Dio dio;

  EventRemoteDataSourceImpl(this.dio);

  @override
  Future<List<EventModel>> getEvents(EventParams params) async {
    const url = 'api/test-task';
    final formatter = DateFormat('dd-MM-yyyy');

    final response = await dio.get(
      url,
      queryParameters: {
        'start_date': formatter.format(params.startDate),
        if (params.endDate != null)
          'end_date': formatter.format(params.endDate!),
      },
    );

    if (response.statusCode == 200) {
      final data = response.data as List;
      return data.map((item) => EventModel.fromJson(item)).toList();
    } else {
      throw ServerException();
    }
  }
}
