

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceManager {
  static SharedPreferences? _pref;

  Future<SharedPreferences> getSharedPref() async {
    _pref ??= await SharedPreferences.getInstance();
    return _pref!;
  }

  setType<T>(String key, T data) {
    getSharedPref().then((sp) {
      if (data is bool) {
        sp.setBool(key, data);
      } else if (data is int) {
        sp.setInt(key, data);
      } else if (data is double) {
        sp.setDouble(key, data);
      } else {
        sp.setString(key, data as String);
      }
    });
  }

  bool? getBool(String key) => _pref?.getBool(key);

  String? getString(String key) => _pref?.getString(key);

  int? getInt(String key) => _pref?.getInt(key);

  double? getDouble(String key) => _pref?.getDouble(key);

  String getAuthToken() {
    return getString(PrefConstants.AUTH_TOKEN.name) ?? "";
  }

  setAuthToken(String value) {
   setType<String>(PrefConstants.AUTH_TOKEN.name, value);
  }


  clearAll() {
    _pref!.clear();
  }
}

enum PrefConstants {
  // ignore: constant_identifier_names
  AUTH_TOKEN,
}