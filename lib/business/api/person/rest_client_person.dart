import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client_person.g.dart';

@RestApi()
abstract class RestClientPerson {
  factory RestClientPerson(Dio dio, {String? baseUrl}) = _RestClientPerson;

  // @POST("userService/api/v1/users")
  // Future<HttpResponse<Map<String, dynamic>>> register(
  //     @CancelRequest() CancelToken cancelToken, @Body() Person person);

  @POST("login")
  Future<HttpResponse> login(
    @Part(name: "email") String email,
    @Part(name: "password") String password,
  );

  @GET("api/v1/persons/{id}")
  Future<Person> getPersonById(
    @Path("id") int id,
  );

  @GET("api/v1/persons")
  Future<List<Person>> getPersons(
    @CancelRequest() CancelToken cancelToken,
  );

  @POST("api/v1/goal/addGoal")
  Future<Goal> addGoal(
      @CancelRequest() CancelToken cancelToken, @Body() Goal goal);

  @POST("api/v1/goal/removeGoal/{id}")
  Future<Goal> removeGoal(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") int id,
  );

  @POST("api/v1/workouts/createWorkout")
  Future<Workout> createWorkout(
    @CancelRequest() CancelToken cancelToken,
    @Body() Workout workout,
  );

  @POST("api/v1/workouts/saveWorkout")
  Future<Workout> saveWorkout(
    @CancelRequest() CancelToken cancelToken,
    @Body() Workout workout,
  );

  @POST("api/v1/workouts/{id}")
  Future<Workout> markWorkoutCompleted(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") int id,
  );

  @POST("api/v1/persons/follow")
  Future<Person> followPerson(
    @CancelRequest() CancelToken cancelToken,
    @Body() int id,
  );

  @POST("api/v1/persons/unfollow/{id}")
  Future<Person> unfollowPerson(
    @CancelRequest() CancelToken cancelToken,
    @Path("id") id,
  );
}
