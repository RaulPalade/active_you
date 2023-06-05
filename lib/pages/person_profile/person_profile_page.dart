import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/pages/person_profile/widget/other_card.dart';
import 'package:active_you/pages/person_profile/widget/profile_header.dart';
import 'package:active_you/pages/person_profile/widget/stats_card.dart';
import 'package:active_you/pages/person_profile/widget/status_card.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonProfilePage extends ConsumerWidget {
  const PersonProfilePage({Key? key}) : super(key: key);

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPerson = ref.watch(currentPersonProvider);
    return Scaffold(
      appBar: const MyAppBar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
        child: Column(
          children: [
            ProfileHeader(
              fullName: "${currentPerson?.name} ${currentPerson?.surname}",
              currentGoal: "Lose a fat program",
              button: PrimaryButton(title: "Edit", onClick: () {}),
            ),
            const SizedBox(height: 25),
            GridView.count(
              padding: const EdgeInsets.only(bottom: 18),
              crossAxisCount: 3,
              childAspectRatio: 1.6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
              shrinkWrap: true,
              children: const [
                StatsCard(value: "180cm", unitMeasure: "Height"),
                StatsCard(value: "65", unitMeasure: "Weight"),
                StatsCard(value: "22yo", unitMeasure: "Age"),
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 0,
              shrinkWrap: true,
              children: const [
                StatsCard(value: "180", unitMeasure: "Following"),
                StatsCard(value: "180", unitMeasure: "Followers"),
              ],
            ),
            const SizedBox(height: 48),
            const StatusCard(),
            const SizedBox(height: 48),
            const OtherCard(),
          ],
        ),
      ),
    );
  }
}
