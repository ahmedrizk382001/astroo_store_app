import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/features/admin/home/presentation/views/admin_home.dart';
import 'package:astroo_store_app/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:astroo_store_app/features/auth/presentation/views/login_view/login_view.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/sign_up_view.dart';
import 'package:astroo_store_app/features/customer/home/presentation/views/customer_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../helpers/shared_pref/shared_pref.dart';
import '../helpers/shared_pref/shared_pref_keys.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings routeSettings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (routeSettings.name) {
      case Routers.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: LoginView(),
          ),
        );
      case Routers.signUp:
        return MaterialPageRoute(
          builder: (_) => SignUpView(),
        );
      case Routers.adminHome:
        return MaterialPageRoute(
          builder: (_) => AdminHome(),
        );
      case Routers.customerHome:
        return MaterialPageRoute(
          builder: (_) => CustomerHome(),
        );
      default:
        return null;
    }
  }

  static Future<String?> initialRoute() async {
    String accessToken = await SharedPref.instance
            .getSecuredString(SharedPrefKeys.accessToken) ??
        '';
    var userRole =
        SharedPref.instance.getValue<String>(SharedPrefKeys.userRole);

    debugPrint(
        "initialRoute access token =>>>>>> $accessToken || user role =>>>>> $userRole");
    if (accessToken != '') {
      if (userRole == "admin") {
        return Routers.adminHome;
      } else if (userRole == "customer") {
        return Routers.customerHome;
      }
    }
    return Routers.login;
  }
}
