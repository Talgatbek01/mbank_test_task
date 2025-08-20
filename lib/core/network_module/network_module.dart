import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../features/event/data/datasources/event_api_client.dart';
import '../constants/constants.dart';
import '../interceptor/interceptor.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );
    dio.interceptors.add(DioInterceptor());
    return dio;
  }

  @lazySingleton
  EventApiClient apiClient(Dio dio) => EventApiClient(dio);
}
