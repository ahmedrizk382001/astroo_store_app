import 'package:astroo_store_app/core/Routers/app_router.dart';
import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:flutter/material.dart';
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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: darkTheme(),
        locale: Locale('en'),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routers.login,
      ),
    );
  }
}
