import 'package:astroo_store_app/core/Routers/app_router.dart';
import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/di/dependency_injection.dart';

import 'package:astroo_store_app/core/shared/app_cubit/app_settings_cubit_cubit.dart';
import 'package:astroo_store_app/features/auth/presentation/cubit/cubit/auth_cubit.dart';
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

        return ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<AppSettingsCubit>()
                  ..getCurrenTheme()
                  ..getCurrentLanguage(),
              ),
              BlocProvider(
                create: (context) => getIt<AuthCubit>(),
              ),
            ],
            child: _AppSettingsHandler(initialRoute: initialRoute),
          ),
        );
      },
    );
  }
}

class _AppSettingsHandler extends StatelessWidget {
  final String initialRoute;

  const _AppSettingsHandler({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingsCubit, AppSettingsState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        var appCubit = context.read<AppSettingsCubit>();
        final isDarkTheme = appCubit.isDark;
        final locale = Locale(appCubit.language);

        return _AstrooMaterialApp(
          initialRoute: initialRoute,
          isDarkTheme: isDarkTheme,
          locale: locale,
        );
      },
    );
  }
}

class _AstrooMaterialApp extends StatelessWidget {
  final String initialRoute;
  final bool isDarkTheme;
  final Locale locale;

  const _AstrooMaterialApp({
    required this.initialRoute,
    required this.isDarkTheme,
    required this.locale,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkTheme ? darkTheme() : lightTheme(),
      locale: locale,
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
