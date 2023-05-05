import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/follow_button.dart';
import 'package:flutter/material.dart';

class UserListItem extends StatelessWidget {
  const UserListItem(
      {Key? key,
      required this.fullName,
      required this.sex,
      required this.onClick})
      : super(key: key);

  final String fullName;
  final String sex;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: ActiveYouTheme.grayMediumColor.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(
                        "assets/images/profile-mock/profile-pic.png"),
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
                          sex,
                          style: const TextStyle(
                            fontSize: 12,
                            color: ActiveYouTheme.grayDarkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const FollowButton(followStatus: ["Follow", "Unfollow"]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
