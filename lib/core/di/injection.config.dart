// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:mbank_test_task/core/network_module/network_module.dart'
    as _i28;
import 'package:mbank_test_task/features/event/data/datasources/event_remote_data_source.dart'
    as _i850;
import 'package:mbank_test_task/features/event/data/repository_impl/event_repository_impl.dart'
    as _i777;
import 'package:mbank_test_task/features/event/domain/repositories/event_repository.dart'
    as _i520;
import 'package:mbank_test_task/features/event/domain/use_cases/event_use_cases.dart'
    as _i470;
import 'package:mbank_test_task/features/event/presentation/bloc/event_cubit.dart'
    as _i989;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio());
    gh.lazySingleton<_i850.EventRemoteDataSource>(
      () => _i850.EventRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i520.EventRepository>(
      () => _i777.EventRepositoryImpl(
        remoteDataSource: gh<_i850.EventRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i470.EventUseCases>(
      () => _i470.EventUseCases(gh<_i520.EventRepository>()),
    );
    gh.factory<_i989.EventCubit>(
      () => _i989.EventCubit(gh<_i470.EventUseCases>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i28.NetworkModule {}
