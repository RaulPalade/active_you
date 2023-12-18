import 'dart:developer';

import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/my_goals/my_goals_state.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyGoalsVM extends StateNotifier<MyGoalsState> {
  final Ref ref;
  FirebaseMethods firebase = FirebaseMethods();

  MyGoalsVM(this.ref) : super(const MyGoalsState()) {
    fetchMyGoals();
  }

  void addGoalToList(Goal goal) {
    state = state.copyWith(activeGoals: [...?state.activeGoals, goal]);
  }

  Future<void> fetchMyGoals() async {
    try {
      final currentUser = ref.watch(currentPersonProvider);

      final response = await firebase.getSubCollection(
          "users", currentUser?.email ?? "", "goals");

      List<Goal> myGoals = response.docs
          .map((e) {
        final data = e.data();
        return data != null && data is Map<String, dynamic>
            ? Goal.fromJson(data)
            : null;
      })
          .whereType<Goal>()
          .toList();

      final filteredList = filterMyGoals(myGoals);

      state = state.copyWith(
        activeGoals: filteredList[0],
        completedGoals: filteredList[1],
      );
    } catch (e) {
      log(e.toString());
    }
  }

  List<List<Goal>> filterMyGoals(List<Goal> myGoals) {
    var allGoals = <List<Goal>>[];
    var activeGoals = <Goal>[];
    var completedGoals = <Goal>[];

    if (myGoals.isNotEmpty) {
      for (var goal in myGoals) {
        if (!goal.completed!) {
          activeGoals.add(goal);
        } else {
          completedGoals.add(goal);
        }
      }
    }

    allGoals.add(activeGoals);
    allGoals.add(completedGoals);

    return allGoals;
  }

  Future<bool> markGoalsAsCompleted(String goalId) async {
    try {
      final currentUser = ref.watch(currentPersonProvider);

      final updateData = {"endDate": DateTime.now().toIso8601String(), "completed": true};
      firebase.updateSubDocument(
          "users", currentUser?.email ?? "", "goals", goalId, updateData);

      final updatedActiveGoals =
          state.activeGoals?.where((goal) => goal.id != goalId).toList();
      final completedWorkout =
          state.activeGoals?.firstWhere((goal) => goal.id == goalId);

      state = state.copyWith(activeGoals: updatedActiveGoals);
      state = state.copyWith(
          completedGoals: [...?state.completedGoals, completedWorkout!]);
      fetchMyGoals();
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
