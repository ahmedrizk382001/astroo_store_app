import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/networking/dio_factory.dart';
import 'package:astroo_store_app/core/shared/app_cubit/app_settings_cubit_cubit.dart';
import 'package:astroo_store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:astroo_store_app/features/auth/data/repos/auth_repo.dart';
import 'package:astroo_store_app/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  getIt
    ..registerFactory(
      () => AppSettingsCubit(),
    )
    ..registerLazySingleton<Dio>(() => DioFactory.getDio())
    ..registerLazySingleton<ApiService>(
      () => ApiService(getIt<Dio>()),
    )
    ..registerLazySingleton(
      () => AuthDataSource(getIt<ApiService>()),
    )
    ..registerLazySingleton(
      () => AuthRepo(getIt<AuthDataSource>()),
    )
    ..registerFactory(
      () => AuthCubit(getIt<AuthRepo>()),
    );
}
