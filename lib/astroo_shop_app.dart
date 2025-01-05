import 'package:astroo_store_app/core/Routers/app_router.dart';
import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:astroo_store_app/core/shared/app_cubit/app_settings_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/styles/theme/app_theme.dart';
import 'generated/l10n.dart';

class AstrooShopApp extends StatelessWidget {
  const AstrooShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) {
          return AppSettingsCubit()
            ..getCurrenTheme()
            ..getCurrentLanguage();
        },
        child: BlocBuilder<AppSettingsCubit, AppSettingsState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            var appCubit = context.read<AppSettingsCubit>();
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: appCubit.isDark ? darkTheme() : lightTheme(),
              locale: Locale(appCubit.language),
              localizationsDelegates: _localizationDelegateList,
              supportedLocales: S.delegate.supportedLocales,
              onGenerateRoute: AppRouter.generateRoute,
              initialRoute: Routers.login,
            );
          },
        ),
      ),
    );
  }

  List<LocalizationsDelegate<dynamic>> get _localizationDelegateList {
    return [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }
}
