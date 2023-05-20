import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/white_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutBigCard extends StatelessWidget {
  const WorkoutBigCard(
      {Key? key,
      required this.workoutName,
      required this.exercises,
      required this.type})
      : super(key: key);

  final String workoutName;
  final int exercises;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ActiveYouTheme.workoutCardBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    workoutName,
                    style: const TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 14,
                      color: ActiveYouTheme.textBlackColor,
                    ),
                  ),
                  Text(
                    "$exercises Exercises | $type minutes",
                    style: const TextStyle(
                      fontSize: 12,
                      color: ActiveYouTheme.grayDarkColor,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 120,
                    height: 40,
                    child: WhiteButton(title: "View More", onClick: () {}),
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: MediaQuery.of(context).size.width / 7,
                backgroundColor: Colors.white70,
                child: SvgPicture.asset(
                  "assets/icons/workouts-images/3.svg",
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
