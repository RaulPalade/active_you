import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client_workout.g.dart';

@RestApi()
abstract class RestClientWorkout {
  factory RestClientWorkout(Dio dio, {String? baseUrl}) = _RestClientWorkout;
}
