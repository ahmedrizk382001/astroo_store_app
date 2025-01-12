import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static final Dio _dio = Dio();

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    _dio
      ..options.connectTimeout = timeOut
      ..options.receiveTimeout = timeOut;

    debugPrint(
      "[USER Token] ====> ${SharedPref.instance.getSecuredString(SharedPrefKeys.accessToken)}",
    );

    addDioInterceptor();
    return _dio;
  }

  static void addDioInterceptor() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] =
            "Bearer ${SharedPref.instance.getSecuredString(SharedPrefKeys.accessToken)}";
        return handler.next(options);
      },
    ));
  }
}
