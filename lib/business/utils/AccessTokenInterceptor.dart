import 'dart:async';

import 'package:dio/dio.dart';

import 'SecureStorageManager.dart';

/// [AccessTokenInterceptor] is used to add JWT access token to each call if it is stored in the secure storage.
class AccessTokenInterceptor extends Interceptor {
  AccessTokenInterceptor();

  final SecureStorageManager _storage = SecureStorageManager();

  /// [onRequest] will override each request made by Dio instance and add the
  /// JWT access token to the header (if the token is stored in the secure storage)
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      await _storage.deleteAll();
      String? idToken = await _storage.readValue(_storage.idTokenKey);
      if (idToken != null) {
        options.headers["Authorization"] = 'Bearer $idToken';
        //log("ID TOKEN EXPIRE DATE: ${loginResponse.notBefore}");
      }
      handler.next(options);
    } catch (error) {
      handler.reject(DioError(requestOptions: options, error: error));
      rethrow;
    }
  }
}