import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_workouts_state.freezed.dart';

@freezed
class MyWorkoutsState with _$MyWorkoutsState {
  const factory MyWorkoutsState({
    @Default([]) List<PersonWorkout>? activeWorkouts,
    @Default([]) List<PersonWorkout>? completedWorkouts,
    ErrorApiCall? errorApiCall,
  }) = MyWorkoutsStateData;
}
