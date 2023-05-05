import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:active_you/widgets/item_lists/workout_big_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExploreWorkoutsPage extends ConsumerStatefulWidget {
  const ExploreWorkoutsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ExploreWorkoutsPage> createState() => _ExploreWorkoutsState();
}

class _ExploreWorkoutsState extends ConsumerState<ExploreWorkoutsPage> {
  final workouts = [
    FakeWorkout("Fullbody Workout", 200, 10, 4),
    FakeWorkout("Lowerbody Workout", 120, 20, 4),
    FakeWorkout("Ab Workout", 160, 15, 3),
    FakeWorkout("Fullbody Workout", 110, 5, 2),
    FakeWorkout("Lowerbody Workout", 320, 25, 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Explore Workouts"),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          itemCount: workouts.length,
          itemBuilder: (BuildContext context, int index) {
            return WorkoutBigCard(
              workoutName: workouts[index].name,
              exercises: workouts[index].exercises,
              minutes: workouts[index].minutes,
            );
          }),
    );
  }
}
