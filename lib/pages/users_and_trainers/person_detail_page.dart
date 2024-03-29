import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/person_profile/widget/profile_header.dart';
import 'package:active_you/pages/person_profile/widget/stats_card.dart';
import 'package:active_you/pages/users_and_trainers/persons_and_trainers_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/utils/my_date_utils.dart';
import 'package:active_you/widgets/buttons/follow_button.dart';
import 'package:active_you/widgets/item_lists/workout_big_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonDetailPage extends ConsumerWidget {
  const PersonDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Person person = ModalRoute.of(context)?.settings.arguments as Person;
    final currentUser = ref.watch(currentPersonProvider);
    bool isTrainer = person.roles?.contains("TRAINER") ?? false;

    final createdWorkouts = ref.watch(createdWorkoutsProvider);

    return Scaffold(
      appBar: const MyAppBar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
        child: Column(
          children: [
            ProfileHeader(
              fullName: "${person.name} ${person.surname}",
              gender: person.sex!,
              currentGoal: "Lose a fat program",
              button: FollowButton(
                status: currentUser!.following!.contains(person.id!)
                    ? "Unfollow"
                    : "Follow",
                onClick: () {
                  currentUser.following!.contains(person.id!)
                      ? ref
                          .read(sessionProvider.notifier)
                          .unfollowPerson(person.id!)
                      : ref.read(sessionProvider.notifier).followPerson(person);
                },
              ),
            ),
            const SizedBox(height: 25),
            GridView.count(
              padding: const EdgeInsets.only(bottom: 18),
              crossAxisCount: 3,
              childAspectRatio: 1.6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
              shrinkWrap: true,
              children: [
                StatsCard(
                    value: person.height.toString(),
                    unitMeasure: person.heightUnit.toString()),
                StatsCard(
                    value: person.weight.toString(),
                    unitMeasure: person.weightUnit.toString()),
                StatsCard(
                    value: MyDateUtils.calculateAge(person.dateOfBirth!),
                    unitMeasure: "Age"),
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
              shrinkWrap: true,
              children: [
                StatsCard(
                    value: person.following!.length.toString(),
                    unitMeasure: "Following"),
                StatsCard(
                    value: person.followers!.length.toString(),
                    unitMeasure: "Followers"),
              ],
            ),
            if (isTrainer) ...[
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lista Esercizi",
                  style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 26,
                    color: ActiveYouTheme.brandDarkColor,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: createdWorkouts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return WorkoutBigCard(workout: createdWorkouts[index]);
                    }),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
