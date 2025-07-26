import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/event/data/datasources/event_datasource.dart';
import '../../features/event/data/repository_impl/event_repository_impl.dart';
import '../../features/event/domain/repositories/event_repository.dart';
import '../../features/event/domain/use_cases/event_use_cases.dart';
import '../../features/event/presentation/bloc/event_cubit.dart';
import '../constants/constants.dart';
import '../interceptor/interceptor.dart';

final getIt = GetIt.instance;

Future<void> setupServices() async {
  final dio = Dio(
    BaseOptions(
      baseUrl: Constants.baseUrl,
      validateStatus: (status) => true,
      sendTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      connectTimeout: const Duration(seconds: 10),
    ),
  );

  dio.interceptors.addAll({DioInterceptor()});
  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<EventDatasource>(
    () => EventDatasource(getIt<Dio>()),
  );
  getIt.registerLazySingleton<EventRepository>(
    () => EventRepositoryImpl(getIt<EventDatasource>()),
  );
  getIt.registerLazySingleton<EventUseCases>(
    () => EventUseCases(getIt<EventRepository>()),
  );
  getIt.registerFactory<EventCubit>(() => EventCubit(getIt<EventUseCases>()));
}
