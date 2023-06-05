import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    required int? id,
    required String? name,
    required String? surname,
    required String? email,
    required String? password,
    required String? sex,
    required DateTime? dateOfBirth,
    required double? weight,
    required String? weightUnit,
    required double? height,
    required String? heightUnit,
    required List<String>? roles,
    required List<Workout>? myWorkouts,
    required List<Workout>? createdWorkouts,
    required List<Goal>? myGoals,
    required List<int>? following,
    required List<int>? followers,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$$_PersonToJson(this as _$_Person);
}
