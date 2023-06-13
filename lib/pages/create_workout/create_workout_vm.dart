import 'package:active_you/business/models/exercise/exercise.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/api_provider.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/create_workout/create_workout_state.dart';
import 'package:active_you/pages/explore_workouts/explore_workouts_page.dart';
import 'package:active_you/utils/api_errors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class CreateWorkoutVM extends StateNotifier<CreateWorkoutState> {
  final Ref ref;

  CreateWorkoutVM(this.ref) : super(const CreateWorkoutState());

  void setWorkoutName(String name) {
    state = state.copyWith(workoutName: name);
  }

  void setWorkoutType(String type) {
    state = state.copyWith(workoutType: type);
  }

  void resetWorkoutForm() {
    state = state.copyWith(
      workoutName: "",
      workoutType: "",
    );
  }

  void setExerciseName(String name) {
    state = state.copyWith(exerciseName: name);
  }

  void setExerciseRepetitions(int repetitions) {
    state = state.copyWith(exerciseRepetitions: repetitions);
  }

  void setExerciseSeries(int series) {
    state = state.copyWith(exerciseSeries: series);
  }

  void setWorkoutIdForExercise(int workoutId) {
    state = state.copyWith(generatedId: workoutId);
  }

  void resetExerciseForm() {
    state = state.copyWith(
      exerciseName: "",
      exerciseRepetitions: 0,
      exerciseSeries: 0,
    );
  }

  Future<bool> createWorkout() async {
    try {
      final currentUser = ref.watch(currentPersonProvider);
      Workout workout = Workout(
        id: null,
        createdById: currentUser!.id,
        name: state.workoutName,
        type: state.workoutType,
        exercises: null,
      );

      final workoutId =
          await ref.watch(restClientPersonProvider).createWorkout(workout);

      ref.read(exploreWorkoutsPageProvider.notifier).addWorkoutToList(workout);

      state = state.copyWith(generatedId: workoutId);
      return workoutId != -1;
    } catch (err) {
      await _catchErrorOnFetch(err);
      return false;
    }
  }

  Future<bool> createExercise() async {
    try {
      Exercise exercise = Exercise(
        id: null,
        name: state.exerciseName,
        repetitions: state.exerciseRepetitions,
        series: state.exerciseSeries,
      );

      final exerciseId = await ref
          .watch(restClientPersonProvider)
          .createExercise(exercise, state.generatedId);

      ref
          .read(exploreWorkoutsPageProvider.notifier)
          .addExerciseToWorkoutExerciseList(exercise, state.generatedId);

      return exerciseId != -1;
    } catch (err) {
      await _catchErrorOnFetch(err);
      return false;
    }
  }

  void resetGeneratedId() {
    state = state.copyWith(generatedId: -1);
  }

  Future<void> _catchErrorOnFetch(Object err) async {
    var connectivityResult = await InternetConnectionChecker().hasConnection;
    ErrorApiCall errorType = ErrorApiCall.generic;
    if (!connectivityResult) {
      errorType = ErrorApiCall.noConnection;
    }
    state = CreateWorkoutState(
      workoutName: state.workoutName,
      workoutType: state.workoutType,
      exerciseName: state.exerciseName,
      exerciseRepetitions: state.exerciseRepetitions,
      exerciseSeries: state.exerciseSeries,
      errorApiCall: errorType,
    );
  }
}
