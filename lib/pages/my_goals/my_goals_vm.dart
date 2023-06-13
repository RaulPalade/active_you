import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/my_goals/my_goals_state.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class MyGoalsVM extends StateNotifier<MyGoalsState> {
  final Ref ref;

  MyGoalsVM(this.ref) : super(const MyGoalsState()) {
    fetchMyGoals();
  }

  void addGoalToList(Goal goal) {
    state = state.copyWith(activeGoals: [...?state.activeGoals, goal]);
  }

  Future<void> fetchMyGoals() async {
    try {
      final currentUser = ref.watch(currentPersonProvider);
      final myGoals =
          await ref.read(restClientPersonProvider).getGoals(currentUser!.id!);
      print(myGoals);

      final filteredList = filterMyGoals(myGoals);

      state = state.copyWith(
        activeGoals: filteredList[0],
        completedGoals: filteredList[1],
      );
    } catch (err) {
      await _catchErrorOnFetch(err);
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

  Future<bool> markGoalsAsCompleted(int goalId) async {
    try {
      final currentUser = ref.watch(currentPersonProvider);

      final response = await ref
          .read(restClientPersonProvider)
          .removeGoal(currentUser!.id!, goalId);

      if (response.response.statusCode == 200) {
        final updatedActiveGoals =
            state.activeGoals?.where((goal) => goal.id != goalId).toList();
        final completedWorkout =
            state.activeGoals?.firstWhere((goal) => goal.id == goalId);

        state = state.copyWith(activeGoals: updatedActiveGoals);
        state = state.copyWith(
            completedGoals: [...?state.completedGoals, completedWorkout!]);
        fetchMyGoals();
        return true;
      } else {
        return false;
      }
    } catch (err) {
      await _catchErrorOnFetch(err);
      return false;
    }
  }

  Future<void> _catchErrorOnFetch(Object err) async {
    var connectivityResult = await InternetConnectionChecker().hasConnection;
    ErrorApiCall errorType = ErrorApiCall.generic;
    if (!connectivityResult) {
      errorType = ErrorApiCall.noConnection;
    }
    state = MyGoalsState(
        activeGoals: state.activeGoals,
        completedGoals: state.completedGoals,
        errorApiCall: errorType);
  }
}
