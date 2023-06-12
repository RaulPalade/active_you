import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/pages/home/home_page_state.dart';
import 'package:active_you/pages/my_goals/my_goals_page.dart';
import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageVM extends StateNotifier<HomePageState> {
  final Ref ref;

  HomePageVM(this.ref) : super(const HomePageState()) {
    fetchMyLastWorkoutAdded();
    fetchMyLastGoalAdded();
  }

  Future<void> fetchMyLastWorkoutAdded() async {
    final myActiveWorkouts = ref.watch(activeWorkoutsProvider);

    if (myActiveWorkouts != null && myActiveWorkouts.isNotEmpty) {
      final PersonWorkout lastWorkoutAdded = myActiveWorkouts
          .reduce((a, b) => a.initDate!.isAfter(b.initDate!) ? a : b);

      state = state.copyWith(lastWorkout: lastWorkoutAdded);
    } else {
      print("Nessun workout aggiunto.");
    }
  }

  Future<void> fetchMyLastGoalAdded() async {
    final myActiveGoals = ref.watch(activeGoalsProvider);

    if (myActiveGoals != null && myActiveGoals.isNotEmpty) {
      final Goal lastGoadAdded = myActiveGoals
          .reduce((a, b) => a.initDate!.isAfter(b.initDate!) ? a : b);

      state = state.copyWith(lastGoal: lastGoadAdded);
    } else {
      print("Nessun workout aggiunto.");
    }
  }
}
