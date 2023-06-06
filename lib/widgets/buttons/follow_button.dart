import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({
    Key? key,
    required this.status,
    required this.onClick,
  }) : super(key: key);

  final String status;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: SizedBox(
        width: 90,
        height: 55,
        child: Card(
          elevation: 0,
          color: ActiveYouTheme.cardColor,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                ActiveYouTheme.secondaryLightColor,
                ActiveYouTheme.secondaryDarkColor,
              ]),
            ),
            child: Center(
              child: Text(
                status,
                style: const TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: 12,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
