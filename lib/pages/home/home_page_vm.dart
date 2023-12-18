import 'dart:developer';

import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/home/home_page_state.dart';
import 'package:active_you/pages/my_goals/my_goals_page.dart';
import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:active_you/utils/firebase_methods.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageVM extends StateNotifier<HomePageState> {
  final Ref ref;
  FirebaseMethods firebase = FirebaseMethods();

  HomePageVM(this.ref) : super(const HomePageState()) {
    fetchMyLastWorkoutAdded();
    fetchMyLastGoalAdded();
    fetchMyFriendsActivity();
  }

  Future<void> fetchMyLastWorkoutAdded() async {
    final myActiveWorkouts = ref.watch(activeWorkoutsProvider);

    if (myActiveWorkouts != null && myActiveWorkouts.isNotEmpty) {
      final Workout lastWorkoutAdded = myActiveWorkouts
          .reduce((a, b) => a.initDate!.isAfter(b.initDate!) ? a : b);

      state = state.copyWith(lastWorkout: lastWorkoutAdded);
    }
  }

  Future<void> fetchMyLastGoalAdded() async {
    final myActiveGoals = ref.watch(activeGoalsProvider);

    if (myActiveGoals != null && myActiveGoals.isNotEmpty) {
      final Goal lastGoadAdded = myActiveGoals
          .reduce((a, b) => a.initDate!.isAfter(b.initDate!) ? a : b);

      state = state.copyWith(lastGoal: lastGoadAdded);
    }
  }

  Future<void> fetchMyFriendsActivity() async {
    final currentUser = ref.watch(currentPersonProvider);
    final following = currentUser?.following;

    final followingPerson = <Person>[];

    if (following != null) {
      for (var id in following) {
        var person = await ref.read(sessionProvider.notifier).getPersonById(id);
        if (person != null) {
          followingPerson.add(person);
        }
      }
    }

    final updatedFollowingPerson = <Person>[];
    for (var person in followingPerson) {
      List<Goal> goals = await getUserGoals(person.email!);
      final updatedPerson = person.copyWith(myGoals: goals);
      updatedFollowingPerson.add(updatedPerson);
    }

    state = state.copyWith(friendsActivity: updatedFollowingPerson);
  }

  Future<List<Goal>> getUserGoals(String email) async {
    try {
      final allDocuments =
          await firebase.getSubCollection("users", email, "goals");

      List<Goal> goals = allDocuments.docs
          .map((g) {
            final data = g.data();
            return data != null && data is Map<String, dynamic>
                ? Goal.fromJson(data)
                : null;
          })
          .whereType<Goal>()
          .toList();

      return goals;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
