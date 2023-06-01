import 'package:active_you/business/api/person/rest_client_person.dart';
import 'package:active_you/business/api/workout/rest_client_workout.dart';
import 'package:active_you/business/utils/AccessTokenInterceptor.dart';
import 'package:active_you/business/utils/SecureStorageManager.dart';
import 'package:active_you/env/config_prod.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiProvider {
  SecureStorageManager storageManager = SecureStorageManager();
  static Dio dioDefaultInstance = Dio()
    ..options.connectTimeout = const Duration(seconds: 180)
    ..options.receiveTimeout = const Duration(seconds: 180);
  static Dio tokenDio = Dio();

  final clientPerson = RestClientPerson(dioDefaultInstance);
  final clientWorkout = RestClientWorkout(dioDefaultInstance);

  ApiProvider(String baseUrl) {
    dioDefaultInstance.options.baseUrl = baseUrl;
    dioDefaultInstance.interceptors.add(PrettyDioLogger(
        request: kDebugMode,
        requestHeader: kDebugMode,
        requestBody: false,
        responseBody: false,
        responseHeader: false,
        compact: false,
        error: true));
    dioDefaultInstance.interceptors.add(AccessTokenInterceptor());
  }
}

final apiProvider = Provider.family<ApiProvider, String>((ref, baseUrl) {
  return ApiProvider(baseUrl);
});

final restClientPersonProvider = Provider<RestClientPerson>((ref) {
  final ap = ref.watch(apiProvider(ConfigProd().baseUrl));
  return ap.clientPerson;
});

final restClientWorkoutProvider = Provider<RestClientWorkout>((ref) {
  final ap = ref.watch(apiProvider(ConfigProd().baseUrl));
  return ap.clientWorkout;
});
