import 'package:active_you/business/models/workout/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_workouts_state.freezed.dart';

@freezed
class MyWorkoutsState with _$MyWorkoutsState {
  const factory MyWorkoutsState({
    @Default([]) List<Workout>? activeWorkouts,
    @Default([]) List<Workout>? completedWorkouts,
  }) = MyWorkoutsStateData;
}
