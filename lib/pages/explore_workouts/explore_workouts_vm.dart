import 'package:active_you/business/models/exercise/exercise.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/pages/explore_workouts/explore_workouts_state.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ExploreWorkoutsVM extends StateNotifier<ExploreWorkoutsState> {
  final Ref ref;
  CancelToken? tokenLastRequest;

  ExploreWorkoutsVM(this.ref) : super(const ExploreWorkoutsState()) {
    fetchWorkouts();
  }

  void addWorkoutToList(Workout workout) {
    state = state.copyWith(workouts: [...state.workouts, workout]);
  }

  void addExerciseToWorkoutExerciseList(Exercise exercise, int workoutId) {
    state = state.copyWith(
      workouts: state.workouts.map((workout) {
        if (workout.id == workoutId) {
          final updatedExercises = [...?workout.exercises, exercise];
          return workout.copyWith(exercises: updatedExercises);
        }
        return workout;
      }).toList(),
    );
  }

  Future<void> fetchWorkouts() async {
    try {
      state = const ExploreWorkoutsState(workouts: [], loading: true);

      tokenLastRequest = CancelToken();
      final workoutResponse =
          await ref.read(restClientWorkoutProvider).getWorkouts();

      state = ExploreWorkoutsState(
          workouts: workoutResponse.reversed.toList(), loading: false);
    } catch (err) {
      await _catchErrorOnFetch(err);
    }
    tokenLastRequest = null;
  }

  Future<void> _catchErrorOnFetch(Object err) async {
    var connectivityResult = await InternetConnectionChecker().hasConnection;
    ErrorApiCall errorType = ErrorApiCall.generic;
    if (!connectivityResult) {
      errorType = ErrorApiCall.noConnection;
    }
    state =
        ExploreWorkoutsState(workouts: state.workouts, errorApiCall: errorType);
  }
}
