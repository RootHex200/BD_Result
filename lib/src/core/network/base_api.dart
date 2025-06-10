
import 'dart:developer';

import 'package:bd_result/src/core/di/service_locator.dart';
import 'package:bd_result/src/core/network/app_exception.dart';
import 'package:bd_result/src/core/network/auth_token.dart';
import 'package:bd_result/src/core/typedefs/typedefs.dart';
import 'package:dio/dio.dart';

abstract class BaseApi<TReq, TRes> {
  final String endPoint;
  late Dio _dio;
  final bool handleException;

  BaseApi(this.endPoint, {this.handleException = false}) {
    _dio = getIt<Dio>();
  }

  Future<TRes?> putRequest(TReq? requestModel, {bool isAuthorized = true}) async {
    try {
     log('Making request to: $endPoint with data: $requestModel');

      Response response = await _dio.put(
        endPoint,
        data: requestModel,
        options: Options(
          headers: getHeaders(isAuthorized: isAuthorized),
        ),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      _handleError(e);
      return null;
    } catch (e) {
     log('Unexpected error: $e');
      return null;
    }
  }

  Future<TRes?> deleteRequest(TReq? requestModel, {bool isAuthorized = true}) async {
    try {
     log('Making request to: $endPoint with data: $requestModel');

      Response response = await _dio.delete(
        endPoint,
        data: requestModel,
        options: Options(
          headers: getHeaders(isAuthorized: isAuthorized),
        ),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      _handleError(e);
      return null;
    } catch (e) {
     log('Unexpected error: $e');
      return null;
    }
  }

  Future<TRes?> postRequest(TReq? requestModel, {bool isAuthorized = true}) async {
    try {
     log('Making request to: $endPoint with data: $requestModel');

      Response response = await _dio.post(
        endPoint,
        data: requestModel,
        options: Options(
          headers: getHeaders(isAuthorized: isAuthorized),
        ),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      _handleError(e);
      return null;
    } catch (e) {
     log('Unexpected error: $e');
      return null;
    }
  }

  Future<TRes?> postRequestMultiPartFormData(
      {required FormData formData, required bool isAuthorized}) async {
    try {
     log('Making request to: $endPoint with data: ${formData.fields.toString()}');

      Response response = await _dio.post(
        endPoint,
        data: formData,
        options: Options(
          headers: getHeaders(isAuthorized: isAuthorized),
        ),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      _handleError(e);
      return null;
    } catch (e) {
     log('Unexpected error: $e');
      return null;
    }
  }

  Future<TRes?> getRequest({TReq? requestModel, bool isAuthorized = true}) async {
    try {
     log('Making request to: $endPoint with data: $requestModel');

      Response response = await _dio.get(
        endPoint,
        data: requestModel,
        options: Options(
          headers: getHeaders(isAuthorized: isAuthorized),
        ),
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      _handleError(e);
      return null;
    } catch (e) {
     log('Unexpected error: $e');
      return null;
    }
  }

  TRes? _handleResponse(Response response) {
    if (response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
     log('Response received: ${response.data}');
      if (response.data is JSON) {
        return parseResponse(response.data);
      }
      return parseResponse({});
    } else {
     log('Error: ${response.statusCode} - ${response.statusMessage}');
      return null;
    }
  }

  //todo need handle all the error cases
  void _handleError(DioException error) {
    switch (error.response?.statusCode) {
      case 401:
      case 403:
        if (handleException) {
         log(error.response.toString());
        } else {
          throw UnauthorisedException(error.response.toString());
        }
    }

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
       log('Connection Timeout');
        break;
      case DioExceptionType.receiveTimeout:
       log('Receive Timeout');
        break;
      case DioExceptionType.badResponse:
       log('Bad Response: ${error.response?.statusCode}');
        break;
      case DioExceptionType.cancel:
       log('Request Cancelled');
        break;
      case DioExceptionType.sendTimeout:
       log('Send Timeout');
        break;
      default:
       log('Error: ${error.message}');
        break;
    }
  }

  TRes parseResponse(JSON jsonResponse);

  Map<String, String> getHeaders({bool isAuthorized = true}) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (isAuthorized) {
      String token = getIt<AuthToken>().getAuthToken();
      if (token.isNotEmpty) {
        headers['Authorization'] = 'Bearer $token';
      } else {
       log('Warning: No token found for authorized request');
      }
    }

   log('Headers: $headers');

    return headers;
  }
}