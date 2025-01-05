import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._();
  static final SharedPref instance = SharedPref._();

  static late SharedPreferences _preferences;

  /// Initialize the SharedPreferences instance.
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  /// Set a value (generic method for all types).
  Future<void> setValue<T>(String key, T value) async {
    if (value is String) {
      await _preferences.setString(key, value);
    } else if (value is bool) {
      await _preferences.setBool(key, value);
    } else if (value is int) {
      await _preferences.setInt(key, value);
    } else if (value is double) {
      await _preferences.setDouble(key, value);
    } else {
      throw ArgumentError('Unsupported type');
    }
  }

  /// Get a value (generic method for all types).
  T? getValue<T>(String key) {
    return _preferences.get(key) as T?;
  }

  /// Remove a preference.
  Future<void> remove(String key) async {
    await _preferences.remove(key);
  }

  /// Check if a preference exists.
  bool contains(String key) => _preferences.containsKey(key);

  /// Clear all preferences.
  Future<void> clear() async {
    await _preferences.clear();
  }
}
