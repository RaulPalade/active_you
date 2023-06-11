import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalListItem extends StatelessWidget {
  const GoalListItem({super.key, required this.goal});

  final Goal goal;

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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          goal.name!,
                          style: const TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontSize: 14,
                            color: ActiveYouTheme.textBlackColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${goal.type.toString()} | Obiettivo: ${goal.weight} kg",
                          style: const TextStyle(
                            fontSize: 12,
                            color: ActiveYouTheme.grayDarkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset("assets/icons/interface/workout-btn.svg"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
