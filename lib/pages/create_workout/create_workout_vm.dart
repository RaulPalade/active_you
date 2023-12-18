import 'dart:developer';

import 'package:active_you/business/models/exercise/exercise.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/create_workout/create_workout_state.dart';
import 'package:active_you/pages/explore_workouts/explore_workouts_page.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateWorkoutVM extends StateNotifier<CreateWorkoutState> {
  final Ref ref;
  FirebaseMethods firebase = FirebaseMethods();

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

  void setWorkoutIdForExercise(String workoutId) {
    state = state.copyWith(generatedId: "");
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
      String workoutId = Guid.newGuid.value;
      log("WorkoutID: $workoutId");
      Workout workout = Workout(
        id: workoutId,
        createdById: currentUser!.email,
        name: state.workoutName,
        type: state.workoutType,
        initDate: DateTime.now(),
        endDate: null,
        completed: false,
        exercises: null,
      );

      await firebase.addNewDocument("workouts", workoutId, workout.toJson());
      ref.read(exploreWorkoutsPageProvider.notifier).addWorkoutToList(workout);

      state = state.copyWith(generatedId: workoutId);
      return workoutId != "";
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> createExercise() async {
    try {
      String exerciseId = Guid.newGuid.value;
      Exercise exercise = Exercise(
        id: exerciseId,
        name: state.exerciseName,
        repetitions: state.exerciseRepetitions,
        series: state.exerciseSeries,
      );

      await firebase.addDocToSubCollection("workouts", state.generatedId,
          "exercises", exerciseId, exercise.toJson());

      ref
          .read(exploreWorkoutsPageProvider.notifier)
          .addExerciseToWorkoutExerciseList(exercise, state.generatedId);

      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  void resetGeneratedId() {
    state = state.copyWith(generatedId: "");
  }
}
