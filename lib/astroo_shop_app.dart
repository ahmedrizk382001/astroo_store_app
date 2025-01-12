import 'package:astroo_store_app/core/Routers/app_router.dart';
import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/di/dependency_injection.dart';

import 'package:astroo_store_app/core/shared/app_cubit/app_settings_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/styles/theme/app_theme.dart';
import 'generated/l10n.dart';

class AstrooShopApp extends StatelessWidget {
  const AstrooShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: BlocProvider(
        create: (_) => getIt<AppSettingsCubit>()
          ..getCurrenTheme()
          ..getCurrentLanguage(),
        child: const _AppSettingsHandler(),
      ),
    );
  }
}

class _AppSettingsHandler extends StatelessWidget {
  const _AppSettingsHandler();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingsCubit, AppSettingsState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return const _InitialRouteResolver();
      },
    );
  }
}

class _InitialRouteResolver extends StatelessWidget {
  const _InitialRouteResolver();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: AppRouter.initialRoute(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        final initialRoute = snapshot.data ?? Routers.login;
        return _AstrooMaterialApp(initialRoute: initialRoute);
      },
    );
  }
}

class _AstrooMaterialApp extends StatelessWidget {
  final String initialRoute;

  const _AstrooMaterialApp({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.read<AppSettingsCubit>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appCubit.isDark ? darkTheme() : lightTheme(),
      locale: Locale(appCubit.language),
      localizationsDelegates: _localizationDelegateList,
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: initialRoute,
    );
  }

  static List<LocalizationsDelegate<dynamic>> get _localizationDelegateList {
    return [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }
}
