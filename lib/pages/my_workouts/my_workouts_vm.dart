import 'dart:developer';

import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/my_workouts/my_workouts_state.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWorkoutsVM extends StateNotifier<MyWorkoutsState> {
  final Ref ref;
  FirebaseMethods firebase = FirebaseMethods();

  MyWorkoutsVM(this.ref) : super(const MyWorkoutsState()) {
    fetchMyWorkouts();
  }

  Future<void> fetchMyWorkouts() async {
    try {
      final currentUser = ref.watch(currentPersonProvider);

      final allDocuments = await firebase.getSubCollection(
          "users", currentUser?.email ?? "", "workouts");
      final myWorkouts =
          allDocuments.docs.map((w) => w.data() as Workout).toList();

      final filteredList = filterMyWorkouts(myWorkouts);

      state = state.copyWith(
        activeWorkouts: filteredList[0],
        completedWorkouts: filteredList[1],
      );
    } catch (e) {
      log(e.toString());
    }
  }

  Future<bool> markWorkoutAsCompleted(String id) async {
    try {
      final currentUser = ref.watch(currentPersonProvider);

      final updateData = {"completed": true};
      await firebase.updateSubDocument(
        "users",
        currentUser?.email ?? "",
        "workouts",
        id,
        updateData,
      );

      final updatedActiveWorkouts =
          state.activeWorkouts?.where((workout) => workout.id != id).toList();
      final completedWorkout =
          state.activeWorkouts?.firstWhere((workout) => workout.id == id);

      state = state.copyWith(activeWorkouts: updatedActiveWorkouts);
      state = state.copyWith(
          completedWorkouts: [...?state.completedWorkouts, completedWorkout!]);
      fetchMyWorkouts();
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  List<List<Workout>> filterMyWorkouts(List<Workout> myWorkouts) {
    var allWorkouts = <List<Workout>>[];
    var activeWorkouts = <Workout>[];
    var completedWorkouts = <Workout>[];

    if (myWorkouts.isNotEmpty) {
      for (var workout in myWorkouts) {
        if (workout.completed!) {
          completedWorkouts.add(workout);
        } else {
          activeWorkouts.add(workout);
        }
      }
    }

    allWorkouts.add(activeWorkouts);
    allWorkouts.add(completedWorkouts);

    return allWorkouts;
  }
}
