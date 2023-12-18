import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/home/home_page_state.dart';
import 'package:active_you/pages/home/home_page_vm.dart';
import 'package:active_you/pages/home/widgets/friend_activity_card.dart';
import 'package:active_you/pages/home/widgets/goal_big_card.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentPersonProvider);
    final currentGoal = ref.watch(myLastGoalProvider);
    final friendsActivity = ref.watch(myFriendsActivityProvider);

    final filteredFriendsActivity = friendsActivity
        ?.where((friend) =>
            friend.myGoals
                ?.any((goal) => goal.completed != null && !goal.completed!) ==
            true)
        .toList();

    if (currentUser == null || currentGoal == null) {
      return Container(
        color: ActiveYouTheme.scaffoldColor,
        child: SafeArea(
          child: Scaffold(
            appBar: MyAppBar(title: "Bentornato ${currentUser?.name ?? ""}"),
            body: const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Aggiungi almeno un workout e un goal",
                  style: TextStyle(
                    fontSize: 24,
                    color: ActiveYouTheme.brandDarkColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      color: ActiveYouTheme.scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          appBar: MyAppBar(title: "Bentornato ${currentUser.name}"),
          body: SingleChildScrollView(
            child: Column(
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
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 24),
                //   child: WorkoutBigCard(workout: currentWorkout.workout!),
                // ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Divider(),
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
                  child: GoalBigCard(goal: currentGoal),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Divider(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 24, right: 24),
                  child: Text(
                    "Attività dei miei amici",
                    style: TextStyle(
                      fontFamily: "Poppins-Bold",
                      fontSize: 20,
                      color: ActiveYouTheme.brandDarkColor,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                  itemCount: filteredFriendsActivity?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return FriendActivityCard(friend: filteredFriendsActivity![index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

final homePageProvider =
    StateNotifierProvider<HomePageVM, HomePageState>((ref) => HomePageVM(ref));

final myLastGoalProvider =
    Provider<Goal?>((ref) => ref.watch(homePageProvider).lastGoal);

final myFriendsActivityProvider = Provider<List<Person>?>(
    (ref) => ref.watch(homePageProvider).friendsActivity);
