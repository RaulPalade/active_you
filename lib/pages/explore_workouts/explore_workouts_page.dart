import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/pages/explore_workouts/explore_workouts_state.dart';
import 'package:active_you/widgets/item_lists/workout_big_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'explore_workouts_vm.dart';

class ExploreWorkoutsPage extends ConsumerWidget {
  const ExploreWorkoutsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workouts = ref.watch(_workoutsProvider);

    return Scaffold(
      appBar: const MyAppBar(title: "Explore Workouts"),
      body: workouts.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: workouts.length,
              itemBuilder: (BuildContext context, int index) {
                return WorkoutBigCard(workout: workouts[index]);
              })
          : const Center(
              child: Text("No Workouts Found", style: TextStyle(fontSize: 26)),
            ),
    );
  }
}

final exploreWorkoutsPageProvider =
    StateNotifierProvider.autoDispose<ExploreWorkoutsVM, ExploreWorkoutsState>(
        (ref) => ExploreWorkoutsVM(ref));

final _workoutsProvider = Provider.autoDispose<List<Workout>>((ref) {
  return ref.watch(exploreWorkoutsPageProvider).workouts;
});

final workoutAuthorProvider = Provider.autoDispose<Person?>((ref) {
  return ref.watch(exploreWorkoutsPageProvider).workoutAuthor;
});