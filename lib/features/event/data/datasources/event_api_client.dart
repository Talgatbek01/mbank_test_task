import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constants.dart';
import '../models/event_model.dart';

part 'event_api_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class EventApiClient {
  factory EventApiClient(Dio dio, {String baseUrl}) = _EventApiClient;

  @GET('api/test-task')
  Future<List<EventModel>> getEvents(
    @Query('start_date') String startDate,
    @Query('end_date') String? endDate,
  );

  @POST('api/task/create')
  Future<EventModel> createEvent(@Body() Map<String, dynamic> body);

  @PUT('api/task/update/{id}')
  Future<EventModel> updateEvent(@Path('id') int id, @Body() Map<String, dynamic> body);

  @DELETE('api/task/delete/{id}')
  Future<void> deleteEvent(@Path('id') int id);
}
