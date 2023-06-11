import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_goals_state.freezed.dart';

@freezed
class MyGoalsState with _$MyGoalsState {
  const factory MyGoalsState({
    @Default([]) List<Goal>? activeGoals,
    @Default([]) List<Goal>? completedGoals,
    ErrorApiCall? errorApiCall,
  }) = MyGoalsStateData;
}
