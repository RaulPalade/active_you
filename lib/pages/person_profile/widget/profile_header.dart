import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader(
      {super.key,
      required this.fullName,
      required this.gender,
      required this.currentGoal,
      required this.button});

  final String fullName;
  final String gender;
  final String currentGoal;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    bool isFemale = gender == "Female";

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: 30,
                backgroundImage: isFemale
                    ? const AssetImage("assets/images/profile-mock/female.png")
                    : const AssetImage("assets/images/profile-mock/male.png")),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fullName,
                    style: const TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 14,
                      color: ActiveYouTheme.textBlackColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    currentGoal,
                    style: const TextStyle(
                      fontSize: 12,
                      color: ActiveYouTheme.grayDarkColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
              height: 42,
              child: Row(
                children: [
                  Flexible(child: button),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
