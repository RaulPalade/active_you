import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader(
      {Key? key,
      required this.fullName,
      required this.currentGoal,
      required this.onClick})
      : super(key: key);

  final String fullName;
  final String currentGoal;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                  "assets/images/profile-mock/profile-pic.svg"),
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
                  Flexible(
                      child: PrimaryButton(title: "Edit", onClick: onClick)),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
