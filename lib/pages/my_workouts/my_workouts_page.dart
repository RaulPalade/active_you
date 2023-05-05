import 'package:active_you/widgets/item_lists/workout_list_item.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:active_you/widgets/tab/my_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWorkoutsPage extends ConsumerStatefulWidget {
  const MyWorkoutsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MyWorkoutsPage> createState() => _MyWorkoutsPageState();
}

class _MyWorkoutsPageState extends ConsumerState<MyWorkoutsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;

  final fakeActiveWorkouts = [
    FakeWorkout("Fullbody Workout", 200, 10, 4),
    FakeWorkout("Lowerbody Workout", 120, 20, 4),
    FakeWorkout("Ab Workout", 160, 15, 3),
    FakeWorkout("Fullbody Workout", 110, 5, 2),
    FakeWorkout("Lowerbody Workout", 320, 25, 5),
  ];

  final fakePastWorkouts = [
    FakeWorkout("Lowerbody Workout", 320, 25, 6),
    FakeWorkout("Fullbody Workout", 110, 5, 3),
    FakeWorkout("Lowerbody Workout", 120, 20, 5),
    FakeWorkout("Ab Workout", 160, 15, 6),
    FakeWorkout("Fullbody Workout", 200, 10, 1),
  ];

  List<List<FakeWorkout>> listToDisplay = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    listToDisplay.add(fakeActiveWorkouts);
    listToDisplay.add(fakePastWorkouts);
    return Scaffold(
      appBar: const MyAppBar(title: "My Workouts"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MySwitch(
              firstOption: "Active",
              secondOption: "Past",
              onSwitch: (index) => setState(() {
                _tabIndex = index;
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: listToDisplay[_tabIndex].length,
                itemBuilder: (BuildContext context, int index) {
                  return WorkoutListItem(
                      workoutName: listToDisplay[_tabIndex][index].name,
                      calories: listToDisplay[_tabIndex][index].calories,
                      minutes: listToDisplay[_tabIndex][index].minutes,
                      onClick: () {});
                }),
          ),
        ],
      ),
    );
  }
}

class FakeWorkout {
  late final String name;
  late final int calories;
  late final int minutes;
  late final int exercises;

  FakeWorkout(this.name, this.calories, this.minutes, this.exercises);
}
