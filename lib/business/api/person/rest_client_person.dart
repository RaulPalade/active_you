import 'package:active_you/business/models/person/person.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client_person.g.dart';

@RestApi()
abstract class RestClientPerson {
  factory RestClientPerson(Dio dio, {String? baseUrl}) = _RestClientPerson;

  @GET("api/v1/persons")
  Future<List<Person>> getPersons(@CancelRequest() CancelToken cancelToken);
}
