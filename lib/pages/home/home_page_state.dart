import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    PersonWorkout? lastWorkout,
    Goal? lastGoal,
  }) = HomePageStateData;
}
