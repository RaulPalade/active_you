import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/pages/explore_workouts/explore_workouts_state.dart';
import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:active_you/widgets/item_lists/workout_big_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'explore_workouts_vm.dart';

class ExploreWorkoutsPage extends ConsumerWidget {
  ExploreWorkoutsPage({Key? key}) : super(key: key);

  final workouts = [
    FakeWorkout("Fullbody Workout", 200, 10, 4),
    FakeWorkout("Lowerbody Workout", 120, 20, 4),
    FakeWorkout("Ab Workout", 160, 15, 3),
    FakeWorkout("Fullbody Workout", 110, 5, 2),
    FakeWorkout("Lowerbody Workout", 320, 25, 5),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final workoutss = ref.watch(_workoutsProvider);

    return Scaffold(
      appBar: const MyAppBar(title: "Explore Workouts"),
      body: workouts.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: workouts.length,
              itemBuilder: (BuildContext context, int index) {
                return WorkoutBigCard(
                  workoutName: workouts[index].name ?? "",
                  exercises: 10, //workouts[index].exercises?.length ?? 0,
                  type: "Leg" // workouts[index].type ?? "",
                );
              })
          : const Center(
              child: Text(
                "No Workouts Found",
                style: TextStyle(fontSize: 26),
              ),
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

final _loadingProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(exploreWorkoutsPageProvider).loading;
});
