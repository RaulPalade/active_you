import 'package:active_you/utils/api_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_workout_state.freezed.dart';

@freezed
class CreateWorkoutState with _$CreateWorkoutState {
  const factory CreateWorkoutState({
    @Default("") String workoutName,
    @Default("") String workoutType,
    @Default("") String generatedId,
    @Default("") String exerciseName,
    @Default(0) int exerciseRepetitions,
    @Default(0) int exerciseSeries,
    ErrorApiCall? errorApiCall,
  }) = CreateWorkoutStateData;
}
