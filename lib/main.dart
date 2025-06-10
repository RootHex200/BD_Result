
import 'package:bd_result/src/core/database/shared_perf_manager.dart';
import 'package:bd_result/src/core/di/service_locator.dart';
import 'package:bd_result/src/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  //initialize service locator
  initializationServiceLocator();

  //initialize shared preference
  await getIt<SharedPreferenceManager>().getSharedPref();

  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BD Result',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark(
        useMaterial3: true,
      ),

      home:const Homepage(),
       builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.3),
          child: child!,
        );
      }
    );
  }
}

