import 'package:active_you/utils/api_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_workout_state.freezed.dart';

@freezed
class CreateWorkoutState with _$CreateWorkoutState {
  const factory CreateWorkoutState({
    @Default("") String name,
    @Default("") String type,
    ErrorApiCall? errorApiCall,
  }) = CreateWorkoutStateData;
}
