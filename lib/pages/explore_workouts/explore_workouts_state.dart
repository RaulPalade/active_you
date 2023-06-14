import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_workouts_state.freezed.dart';

@freezed
class ExploreWorkoutsState with _$ExploreWorkoutsState {
  const factory ExploreWorkoutsState({
    @Default([]) List<Workout> workouts,
    Person? workoutAuthor,
    @Default(false) loading,
    ErrorApiCall? errorApiCall,
  }) = _ExploreWorkoutsStateData;
}
