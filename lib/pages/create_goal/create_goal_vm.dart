import 'dart:developer';

import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/create_goal/create_goal_state.dart';
import 'package:active_you/pages/my_goals/my_goals_page.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateGoalVM extends StateNotifier<CreateGoalState> {
  final Ref ref;
  FirebaseMethods firebase = FirebaseMethods();

  CreateGoalVM(this.ref) : super(const CreateGoalState());

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setType(String type) {
    state = state.copyWith(type: type);
  }

  void setWeight(double weight) {
    state = state.copyWith(weight: weight);
  }

  void setDaysPerWeek(int daysPerWeek) {
    state = state.copyWith(daysPerWeek: daysPerWeek);
  }

  void resetForm() {
    state = state.copyWith(name: "", type: "", weight: 0.0);
  }

  Future<bool> addGoal() async {
    try {
      final currentUser = ref.watch(currentPersonProvider);
      String goalId = Guid.newGuid.value;

      Goal goal = Goal(
        id: goalId,
        name: state.name,
        type: state.type,
        weight: state.weight,
        daysPerWeek: state.daysPerWeek,
        initDate: DateTime.now(),
        endDate: DateTime.now(),
        completed: false,
      );

      await firebase.addDocToSubCollection(
          "users", currentUser?.email ?? "", "goals", goalId, goal.toJson());

      ref.read(myGoalsPageProvider.notifier).addGoalToList(goal);
      return true;
    } catch (err) {
      return false;
    }
  }

  Future<bool> removeGoal(String goalId) async {
    try {
      final currentUser = ref.watch(currentPersonProvider);

      final updateData = {"endDate": DateTime.now().toIso8601String(), "completed": true};
      await firebase.updateSubDocument(
        "users",
        currentUser?.email ?? "",
        "goals",
        goalId,
        updateData,
      );
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
