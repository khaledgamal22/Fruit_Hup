import 'package:fruits_ecommerce_app/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  late SharedPreferences instance;

  Future<void> init() async {
    instance = await SharedPreferences.getInstance();
  }

  setBool(String key, bool value) {
    instance.setBool(key, value);
  }

  setString(String key, String data) {
    instance.setString(key, data);
  }

  getBool(String key) {
    return instance.getBool(key) ?? false;
  }

  getString(String key) {
    return instance.getString(key) ?? '';
  }

  setCurrentLanguage({required String lang}) async {
    instance.setString(kLanguage, lang);
  }

  getCurrentLanguage() {
    return instance.getString(kLanguage) ?? 'ar';
  }

  setCurrebtUserDate({required String data}) {
    instance.setString(kUserData, data);
  }

  getCurrentUserData() {
    instance.get(kUserData);
  }
}
