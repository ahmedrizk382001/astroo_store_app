import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:astroo_store_app/features/auth/presentation/views/login_view/login_view.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      default:
        return null;
    }
  }
}
