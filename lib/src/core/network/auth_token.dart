

import 'package:bd_result/src/core/database/shared_perf_manager.dart';
import 'package:bd_result/src/core/di/service_locator.dart';

class AuthToken {

  final pref = getIt<SharedPreferenceManager>();

  saveToken(String value){
    pref.setAuthToken(value);
  }

  String getAuthToken(){
    return pref.getAuthToken();
  }

  void clearAuthToken(){
    pref.clearAll();
  }
}