import 'dart:developer';

import 'package:active_you/business/models/exercise/exercise.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/explore_workouts/explore_workouts_state.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExploreWorkoutsVM extends StateNotifier<ExploreWorkoutsState> {
  final Ref ref;
  FirebaseMethods firebase = FirebaseMethods();

  ExploreWorkoutsVM(this.ref) : super(const ExploreWorkoutsState()) {
    fetchWorkouts();
  }

  void addWorkoutToList(Workout workout) {
    state = state.copyWith(workouts: [...state.workouts, workout]);
  }

  void addExerciseToWorkoutExerciseList(Exercise exercise, String workoutId) {
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

      final allDocuments = await firebase.getAllDocuments("workouts");
      List<Workout> workouts =
          allDocuments.map((workouts) => workouts.data() as Workout).toList();

      state = ExploreWorkoutsState(
          workouts: workouts.reversed.toList(), loading: false);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> getWorkoutAuthor(Workout workout) async {
    Person? person = await ref
        .read(sessionProvider.notifier)
        .getPersonById(workout.createdById!);

    if (person != null) {
      state = state.copyWith(workoutAuthor: person);
    }
  }
}
