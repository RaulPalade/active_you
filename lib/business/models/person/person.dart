import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    required int id,
    required String? name,
    required String? surname,
    required String? email,
    required String? password,
    required String? sex,
    required String? role,
    required List<Workout> myWorkouts,
    required List<Goal> myGoals,
    required List<Person> following,
    required List<Person> followers,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$$_PersonToJson(this as _$_Person);
}
