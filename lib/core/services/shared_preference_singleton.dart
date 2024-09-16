import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceSingleton {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _instance.setBool(key, value);
  }

  static setString(String key, String data) async {
    await _instance.setString(key, data);
  }

  static getBool(String key) {
    return _instance.getBool(key) ?? false;
  }

  static getString(String key) {
    return _instance.getString(key) ?? '';
  }
}
