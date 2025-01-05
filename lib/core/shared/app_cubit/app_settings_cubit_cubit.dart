import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_cubit_state.dart';
part 'app_settings_cubit_cubit.freezed.dart';

class AppSettingsCubit extends Cubit<AppSettingsState> {
  AppSettingsCubit() : super(AppSettingsState.initial());

  bool isDark = true;
  String language = 'en';
  SharedPref sharedPref = SharedPref.instance;

  void getCurrenTheme() async {
    isDark = sharedPref.getValue<bool>(SharedPrefKeys.themeMode) != null
        ? sharedPref.getValue<bool>(SharedPrefKeys.themeMode)!
        : true;

    emit(
      AppSettingsState.changeThemeMode(isDark: isDark),
    );
  }

  void changeThemeMode({required bool isDark}) async {
    this.isDark = isDark;

    await sharedPref.setValue<bool>(SharedPrefKeys.themeMode, isDark).then(
      (value) {
        emit(
          AppSettingsState.changeThemeMode(isDark: isDark),
        );
      },
    );
  }

  void getCurrentLanguage() async {
    language = sharedPref.getValue<String>(SharedPrefKeys.language) != null
        ? sharedPref.getValue<String>(SharedPrefKeys.language)!
        : 'en';

    emit(AppSettingsState.changeLanguage(locale: Locale(language)));
  }

  void changeLanguage({required Locale locale}) async {
    language = locale.languageCode;
    await sharedPref
        .setValue<String>(SharedPrefKeys.language, locale.languageCode)
        .then(
      (value) {
        emit(
          AppSettingsState.changeLanguage(locale: locale),
        );
      },
    );
  }

  void checkLanguage({required String language}) {
    if (language == 'en') {
      return changeLanguage(locale: Locale('ar'));
    } else {
      return changeLanguage(locale: Locale('en'));
    }
  }
}
