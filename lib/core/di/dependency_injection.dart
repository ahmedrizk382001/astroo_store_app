import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/networking/dio_factory.dart';
import 'package:astroo_store_app/core/shared/app_cubit/app_settings_cubit_cubit.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/data_source/dashboard_data_source.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:astroo_store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:astroo_store_app/features/auth/data/repos/auth_repo.dart';
import 'package:astroo_store_app/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  await initCore();
  await initAuth();
  await initDashboard();
}

Future<void> initCore() async {
  getIt
    ..registerFactory(
      () => AppSettingsCubit(),
    )
    ..registerLazySingleton<Dio>(() => DioFactory.getDio())
    ..registerLazySingleton<ApiService>(
      () => ApiService(getIt<Dio>()),
    );
}

Future<void> initAuth() async {
  getIt
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

Future<void> initDashboard() async {
  getIt
    ..registerLazySingleton(
      () => DashboardDataSource(getIt<ApiService>()),
    )
    ..registerLazySingleton(
      () => DashboardRepo(getIt<DashboardDataSource>()),
    )
    ..registerFactory(
      () => ProductsNumberBloc(getIt<DashboardRepo>()),
    )
    ..registerFactory(
      () => CategoriesNumberBloc(getIt<DashboardRepo>()),
    )
    ..registerFactory(
      () => UsersNumberBloc(getIt<DashboardRepo>()),
    );
}
