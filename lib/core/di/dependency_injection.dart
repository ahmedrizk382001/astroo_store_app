import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/networking/dio_factory.dart';
import 'package:astroo_store_app/core/shared/app_cubit/app_settings_cubit_cubit.dart';
import 'package:astroo_store_app/core/shared/upload_image/data_source/upload_image_data_source.dart';
import 'package:astroo_store_app/core/shared/upload_image/repo/upload_image_repo.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/data_source/admin_categories_data_source.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/repo/admin_categories_repo.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/add_category_bloc/add_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/bloc/delete_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/update_category_bloc/update_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/data_source/admin_products_data_source.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/repo/admin_products_repo.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/add_product_bloc/add_product_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/get_admin_products/get_admin_products_bloc.dart';
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
  await initImageUpload();
  await initAuth();
  await initDashboard();
  await initAdminCategories();
  await initAdminProducts();
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

Future<void> initAdminCategories() async {
  getIt
    ..registerLazySingleton(
      () => AdminCategoriesDataSource(getIt<ApiService>()),
    )
    ..registerLazySingleton(
      () => AdminCategoriesRepo(getIt<AdminCategoriesDataSource>()),
    )
    ..registerFactory(
      () => GetAdminCategoriesBloc(getIt<AdminCategoriesRepo>()),
    )
    ..registerFactory(
      () => AddCategoryBloc(getIt<AdminCategoriesRepo>()),
    )
    ..registerFactory(
      () => UpdateCategoryBloc(getIt<AdminCategoriesRepo>()),
    )
    ..registerFactory(
      () => DeleteCategoryBloc(getIt<AdminCategoriesRepo>()),
    );
}

Future<void> initAdminProducts() async {
  getIt
    ..registerLazySingleton(
      () => AdminProductsDataSource(getIt<ApiService>()),
    )
    ..registerLazySingleton(
      () => AdminProductsRepo(getIt<AdminProductsDataSource>()),
    )
    ..registerFactory(
      () => GetAdminProductsBloc(getIt<AdminProductsRepo>()),
    )
    ..registerFactory(
      () => AddProductBloc(getIt<AdminProductsRepo>()),
    );
}

Future<void> initImageUpload() async {
  getIt
    ..registerLazySingleton(
      () => UploadImageDataSource(getIt<ApiService>()),
    )
    ..registerLazySingleton(
      () => UploadImageRepo(getIt<UploadImageDataSource>()),
    )
    ..registerFactory(
      () => UploadImageCubit(getIt<UploadImageRepo>()),
    );
}
