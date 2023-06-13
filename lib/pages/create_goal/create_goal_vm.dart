import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/business/utils/SecureStorageManager.dart';
import 'package:active_you/pages/create_goal/create_goal_state.dart';
import 'package:active_you/pages/my_goals/my_goals_page.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class CreateGoalVM extends StateNotifier<CreateGoalState> {
  final Ref ref;

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
      Goal goal = Goal(
        id: null,
        name: state.name,
        type: state.type,
        weight: state.weight,
        daysPerWeek: state.daysPerWeek,
        initDate: DateTime.now(),
        endDate: null,
        completed: false,
      );

      final response = await ref
          .watch(restClientPersonProvider)
          .addGoal(currentUser!.id!, goal);

      if (response.response.statusCode == 200) {
        ref.read(myGoalsPageProvider.notifier).addGoalToList(goal);
        return true;
      } else {
        return false;
      }
    } catch (err) {
      await _catchErrorOnFetch(err);
      return false;
    }
  }

  Future<bool> removeGoal(int goalId) async {
    try {
      final currentUser = ref.watch(currentPersonProvider);

      final response = await ref
          .watch(restClientPersonProvider)
          .removeGoal(currentUser!.id!, goalId);

      if (response.response.statusCode == 200) {
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
    state = CreateGoalState(
      name: state.name,
      type: state.type,
      weight: state.weight,
      errorApiCall: errorType,
    );
  }
}
