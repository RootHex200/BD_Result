
import 'package:bd_result/src/core/database/shared_perf_manager.dart';
import 'package:bd_result/src/core/network/network_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void initializationServiceLocator(){

  getIt.registerSingleton<SharedPreferenceManager>(SharedPreferenceManager());
  getIt.registerSingleton<Dio>(createNetworkClient());
}

