import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/home/home_page_state.dart';
import 'package:active_you/pages/home/home_page_vm.dart';
import 'package:active_you/pages/home/widgets/goal_big_card.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/item_lists/workout_big_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentPersonProvider);
    final currentWorkout = ref.watch(myLastWorkoutProvider);
    final currentGoal = ref.watch(myLastGoalProvider);

    return Container(
      color: ActiveYouTheme.scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          appBar: MyAppBar(title: "Bentornato ${currentUser!.name}"),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 24, right: 24),
                child: Text(
                  "Workout in corso...",
                  style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 20,
                    color: ActiveYouTheme.brandDarkColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: WorkoutBigCard(workout: currentWorkout!.workout!),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 20, left: 24, right: 24),
                child: Text(
                  "Goal in corso...",
                  style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 20,
                    color: ActiveYouTheme.brandDarkColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GoalBigCard(goal: currentGoal!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final homePageProvider =
    StateNotifierProvider<HomePageVM, HomePageState>((ref) => HomePageVM(ref));

final myLastWorkoutProvider =
    Provider<PersonWorkout?>((ref) => ref.watch(homePageProvider).lastWorkout);

final myLastGoalProvider =
    Provider<Goal?>((ref) => ref.watch(homePageProvider).lastGoal);
