import 'package:active_you/utils/api_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_workouts_state.freezed.dart';

@freezed
class ExploreWorkoutsState with _$ExploreWorkoutsState {
  const factory ExploreWorkoutsState({
    @Default([]) workouts,
    @Default(false) loading,
    ErrorApiCall? errorApiCall,
  }) = _ExploreWorkoutsStateData;
}
