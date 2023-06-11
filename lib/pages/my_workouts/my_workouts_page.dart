import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/my_workouts/my_workouts_vm.dart';
import 'package:active_you/widgets/item_lists/workout_list_item.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:active_you/widgets/tab/my_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'my_workouts_state.dart';

class MyWorkoutsPage extends ConsumerStatefulWidget {
  const MyWorkoutsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MyWorkoutsPage> createState() => _MyWorkoutsPageState();
}

class _MyWorkoutsPageState extends ConsumerState<MyWorkoutsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;

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
    final activeWorkouts = ref.watch(activeWorkoutsProvider);
    final completedWorkouts = ref.watch(completedWorkoutsProvider);

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
                itemCount: _tabIndex == 0
                    ? activeWorkouts!.length
                    : completedWorkouts!.length,
                itemBuilder: (BuildContext context, int index) {
                  final list =
                      _tabIndex == 0 ? activeWorkouts : completedWorkouts;
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        EndPoint.myWorkoutDetail,
                        arguments: list[index],
                      );
                    },
                    child: WorkoutListItem(
                      workoutName: list![index].workout!.name!,
                      workoutType: list[index].workout!.type!,
                      numberExercises: list[index].workout!.exercises!.length,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

final myWorkoutsPageProvider =
    StateNotifierProvider.autoDispose<MyWorkoutsVM, MyWorkoutsState>(
        (ref) => MyWorkoutsVM(ref));

final activeWorkoutsProvider = Provider.autoDispose<List<PersonWorkout>?>(
    (ref) => ref.watch(myWorkoutsPageProvider).activeWorkouts);

final completedWorkoutsProvider = Provider.autoDispose<List<PersonWorkout>?>(
    (ref) => ref.watch(myWorkoutsPageProvider).completedWorkouts);
