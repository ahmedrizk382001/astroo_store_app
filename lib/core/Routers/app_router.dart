import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/features/auth/presentation/views/login_view/login_view.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/sign_up_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings routeSettings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (routeSettings.name) {
      case Routers.login:
        return MaterialPageRoute(
          builder: (_) => LoginView(),
        );
      case Routers.signUp:
        return MaterialPageRoute(
          builder: (_) => SignUpView(),
        );
      default:
        return null;
    }
  }
}
