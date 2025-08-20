import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../features/event/data/datasources/event_api_client.dart';
import '../constants/constants.dart';
import '../interceptor/interceptor.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() {
    const Map<String, dynamic> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    final dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
        headers: headers,
      ),
    );
    dio.interceptors.add(DioInterceptor());
    return dio;
  }

  @lazySingleton
  EventApiClient eventApiClient(Dio dio) => EventApiClient(dio);
}
