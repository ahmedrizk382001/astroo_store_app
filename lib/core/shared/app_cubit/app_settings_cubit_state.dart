part of 'app_settings_cubit_cubit.dart';

@freezed
class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState.initial() = _Initial;

  const factory AppSettingsState.changeThemeMode({required bool isDark}) =
      ChangeThemeModeState;

  const factory AppSettingsState.changeLanguage({required Locale locale}) =
      ChangeLanguageState;
}
