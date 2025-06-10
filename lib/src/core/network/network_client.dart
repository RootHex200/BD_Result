

import 'package:bd_result/src/core/network/endpoint.dart';
import 'package:dio/dio.dart';


Dio createNetworkClient(){
  return Dio(
  BaseOptions(
    baseUrl: Endpoint.baseUrl,
    connectTimeout:const  Duration(milliseconds: 10000),
    receiveTimeout:const Duration(milliseconds: 10000),
  )
);
}