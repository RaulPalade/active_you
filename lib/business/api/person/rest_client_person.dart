import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client_person.g.dart';

@RestApi()
abstract class RestClientPerson {
  factory RestClientPerson(Dio dio, {String? baseUrl}) = _RestClientPerson;

  @GET("api/v1/login")
  Future<Person> login(
      @CancelRequest() CancelToken cancelToken,
      @Body() LoginData,
      );

  @GET("api/v1/persons/{id}")
  Future<Person> getPersonById(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") int id,
  );

  @GET("api/v1/persons")
  Future<List<Person>> getPersons(
    @CancelRequest() CancelToken cancelToken,
  );

  @POST("api/v1/persons/addGoal")
  Future<Goal> addGoal(
    @CancelRequest() CancelToken cancelToken,
    @Body() Goal goal,
  );

  @POST("api/v1/persons/removeGoal/{id}")
  Future<Goal> removeGoal(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") int id,
  );

  @POST("api/v1/workouts/create")
  Future<Workout> createWorkout(
    @CancelRequest() CancelToken cancelToken,
    @Body() Workout workout,
  );

  @POST("api/v1/workouts/save")
  Future<Workout> saveWorkout(
    @CancelRequest() CancelToken cancelToken,
    @Body() Workout workout,
  );

  @POST("api/v1/workouts/{id}")
  Future<Workout> markWorkoutCompleted(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") int id,
    @Body() Workout workout,
  );

  @POST("api/v1/persons/follow/{id}")
  Future<Person> followPerson(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") id,
  );

  @POST("api/v1/persons/unfollow/{id}")
  Future<Person> unfollowPerson(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") id,
  );
}
