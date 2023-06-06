import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader(
      {Key? key,
      required this.fullName,
      required this.currentGoal,
      required this.button})
      : super(key: key);

  final String fullName;
  final String currentGoal;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage("assets/images/profile-mock/profile-pic.png"),
            ),
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
