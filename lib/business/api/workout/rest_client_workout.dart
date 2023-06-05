import 'package:active_you/business/models/exercise/exercise.dart';
import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client_workout.g.dart';

@RestApi()
abstract class RestClientWorkout {
  factory RestClientWorkout(Dio dio, {String? baseUrl}) = _RestClientWorkout;

  @GET("workoutService/api/v1/workouts")
  Future<List<Workout>> getWorkouts();

  @GET("workoutService/api/v1/workouts/{id}")
  Future<Workout> getWorkoutById(@Path("id") int id);

  @POST("workoutService/api/v1/workouts/{id}/exercises")
  Future<List<Exercise>> getExercisesByWorkout(@Path("id") int id);

  @GET("workoutService/api/v1/exercises")
  Future<List<Exercise>> getExercises();

  @GET("workoutService/api/v1/exercises/{id}")
  Future<Exercise> getExerciseById(@Path("id") int id);

  @GET("workoutService/api/v1/personWorkouts")
  Future<HttpResponse> saveWorkoutForUser(@Body() PersonWorkout personWorkout);

  @POST("workoutService/api/v1/personWorkouts/{id}")
  Future<HttpResponse> deleteWorkoutForUser(@Path("id") int id);
}
