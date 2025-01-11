import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._();
  static final SharedPref instance = SharedPref._();
  static late FlutterSecureStorage _storage;

  static late SharedPreferences _preferences;

  /// Initialize the SharedPreferences instance.
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
    _storage = FlutterSecureStorage();
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

  Future<void> setSecuredString(String key, String value) async {
    await _storage.write(key: key, value: value);
    debugPrint(
        "FlutterSecureStorage : setSecuredString with key : $key and value : $value");
  }

  Future<String?> getSecuredString(String key) async {
    debugPrint('FlutterSecureStorage : getSecuredString with key : $key');
    return await _storage.read(key: key) ?? '';
  }

  Future<void> deleteAllSecuredData() async {
    await _storage.deleteAll();
  }
}
