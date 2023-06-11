import 'package:active_you/utils/api_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_goal_state.freezed.dart';

@freezed
class CreateGoalState with _$CreateGoalState {
  const factory CreateGoalState({
    @Default("") String name,
    @Default("") String type,
    @Default(0.0) double weight,
    @Default(0) int daysPerWeek,
    DateTime? initDate,
    DateTime? endDate,
    @Default(false) bool completed,
    ErrorApiCall? errorApiCall,
  }) = CreateGoalStateData;
}
