import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/person_follow/person_follow.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client_person.g.dart';

@RestApi()
abstract class RestClientPerson {
  factory RestClientPerson(Dio dio, {String? baseUrl}) = _RestClientPerson;

  @POST("login")
  Future<HttpResponse> login(
    @Part(name: "email") String email,
    @Part(name: "password") String password,
  );

  @POST("/api/v1/auth/create")
  Future<HttpResponse> register(@Body() Person person);

  @GET("/userService/api/v1/users")
  Future<List<Person>> getPersons();

  @GET("/userService/api/v1/users/{id}")
  Future<Person> getPersonById(@Path("id") int id);

  @GET("/userService/api/v1/users/{id}/goals")
  Future<List<Goal>> getGoals(@Path("id") int id);

  @POST("/userService/api/v1/users/{id}/goals")
  Future<HttpResponse> addGoal(@Path("id") int id, @Body() Goal goal);

  @DELETE("/userService/api/v1/users/{id}/goals/{goalId}")
  Future<HttpResponse> removeGoal(
      @Path("id") int id, @Path("goalId") int goalId);

  @POST("/userService/api/v1/users/createWorkout")
  Future<HttpResponse> createWorkout(@Body() Workout workout);

  @POST("/userService/api/v1/personFollow/follow")
  Future<HttpResponse> followPerson(@Body() PersonFollow personFollow);

  @POST("/userService/api/v1/personFollow/unfollow")
  Future<HttpResponse> unfollowPerson(
      @Query("from") int from, @Query("to") int to);
}
