
import 'package:bd_result/src/core/database/shared_perf_manager.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void initializationServiceLocator(){

  getIt.registerSingleton<SharedPreferenceManager>(SharedPreferenceManager());

}