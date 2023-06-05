import 'package:active_you/business/models/workout/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_workout.freezed.dart';

part 'person_workout.g.dart';

@freezed
class PersonWorkout with _$PersonWorkout {
  const factory PersonWorkout({
    required int? id,
    required int? idPerson,
    required Workout? workout,
    required DateTime? initDate,
    required DateTime? endDate,
    required bool? completed,
  }) = _PersonWorkout;

  factory PersonWorkout.fromJson(Map<String, dynamic> json) =>
      _$PersonWorkoutFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$$_PersonWorkoutToJson(this as _$_PersonWorkout);
}
