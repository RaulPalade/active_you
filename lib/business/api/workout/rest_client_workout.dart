import 'package:active_you/business/models/workout/workout.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client_workout.g.dart';

@RestApi()
abstract class RestClientWorkout {
  factory RestClientWorkout(Dio dio, {String? baseUrl}) = _RestClientWorkout;

  @GET("api/v1/workouts")
  Future<List<Workout>> getWorkouts(@CancelRequest() CancelToken cancelToken);
}
