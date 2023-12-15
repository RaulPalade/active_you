import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/person_profile/widget/other_card.dart';
import 'package:active_you/pages/person_profile/widget/profile_header.dart';
import 'package:active_you/pages/person_profile/widget/stats_card.dart';
import 'package:active_you/pages/person_profile/widget/status_card.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/utils/my_date_utils.dart';
import 'package:active_you/utils/snackbars.dart';
import 'package:active_you/widgets/buttons/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonProfilePage extends ConsumerWidget {
  const PersonProfilePage({Key? key}) : super(key: key);

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPerson = ref.watch(currentPersonProvider);
    // TODO FIX roles manage
    bool isTrainer = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontFamily: "Poppins-Bold",
            fontSize: 16,
            color: ActiveYouTheme.blackColor,
          ),
        ),
        actions: isTrainer
            ? [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/interface/plus.svg",
                      width: 32,
                      color: ActiveYouTheme.secondaryDarkColor,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, EndPoint.createWorkout);
                    },
                  ),
                ),
              ]
            : null,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
          child: Column(
            children: [
              ProfileHeader(
                fullName: "${currentPerson?.name} ${currentPerson?.surname}",
                gender: currentPerson!.sex!,
                currentGoal: "Lose a fat program",
                button: SecondaryButton(
                    title: "Logout",
                    onClick: () {
                      final response =
                          ref.read(sessionProvider.notifier).logout();
                      response.then((bool success) {
                        if (success) {
                          Navigator.pushReplacementNamed(
                              context, EndPoint.login);
                        } else {
                          SnackBars.showFailureSnackBar(
                              context, "Impossibile effettuare il logout");
                        }
                      });
                    }),
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
                      value: currentPerson.height.toString(),
                      unitMeasure: currentPerson.heightUnit.toString()),
                  StatsCard(
                      value: currentPerson.weight.toString(),
                      unitMeasure: currentPerson.weightUnit.toString()),
                  StatsCard(
                      value: MyDateUtils.calculateAge(
                          currentPerson.dateOfBirth ?? DateTime.now()),
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
                      value: currentPerson.following?.length.toString() ?? "",
                      unitMeasure: "Following"),
                  StatsCard(
                      value: currentPerson.followers?.length.toString() ?? "",
                      unitMeasure: "Followers"),
                ],
              ),
              const SizedBox(height: 48),
              const StatusCard(),
              const SizedBox(height: 48),
              const OtherCard(),
            ],
          ),
        ),
      ),
    );
  }
}
