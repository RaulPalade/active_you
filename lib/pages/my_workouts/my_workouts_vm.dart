import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/my_workouts/my_workouts_state.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class MyWorkoutsVM extends StateNotifier<MyWorkoutsState> {
  final Ref ref;

  MyWorkoutsVM(this.ref) : super(const MyWorkoutsState()) {
    fetchMyWorkouts();
  }

  Future<void> fetchMyWorkouts() async {
    try {
      final currentUser = ref.watch(currentPersonProvider);
      final myWorkouts = await ref
          .read(restClientWorkoutProvider)
          .getPersonalWorkouts(currentUser!.id!);

      final filteredList = filterMyWorkouts(myWorkouts);

      state = state.copyWith(
        activeWorkouts: filteredList[0],
        completedWorkouts: filteredList[1],
      );
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
  }

  Future<bool> markWorkoutAsCompleted(int id) async {
    try {
      final response =
          await ref.read(restClientWorkoutProvider).deleteWorkoutForUser(id);
      if (response.response.statusCode == 200) {
        final updatedActiveWorkouts =
            state.activeWorkouts?.where((workout) => workout.id != id).toList();
        final completedWorkout =
            state.activeWorkouts?.firstWhere((workout) => workout.id == id);

        state = state.copyWith(activeWorkouts: updatedActiveWorkouts);
        state = state.copyWith(completedWorkouts: [
          ...?state.completedWorkouts,
          completedWorkout!
        ]);
        fetchMyWorkouts();
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
    state = MyWorkoutsState(
        activeWorkouts: state.activeWorkouts,
        completedWorkouts: state.completedWorkouts,
        errorApiCall: errorType);
  }

  List<List<PersonWorkout>> filterMyWorkouts(List<PersonWorkout> myWorkouts) {
    var allWorkouts = <List<PersonWorkout>>[];
    var activeWorkouts = <PersonWorkout>[];
    var completedWorkouts = <PersonWorkout>[];

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
