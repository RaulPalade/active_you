import 'dart:async';
import 'package:dio/dio.dart';
import 'SecureStorageManager.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

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
      String? idToken = await _storage.readValue(_storage.idTokenKey);
      if (idToken != null) {
        print(idToken);
        DateTime expirationDate = JwtDecoder.getExpirationDate(idToken);
        if (expirationDate.isBefore(DateTime.now())) {
          await _storage.deleteValue(idToken);
        } else {
          options.headers["Authorization"] = 'Bearer $idToken';
        }
      }
      handler.next(options);
    } catch (error) {
      handler.reject(DioError(requestOptions: options, error: error));
      rethrow;
    }
  }
}
