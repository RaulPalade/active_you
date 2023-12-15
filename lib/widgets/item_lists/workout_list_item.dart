import 'dart:math';

import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutListItem extends StatelessWidget {
  const WorkoutListItem(
      {super.key,
      required this.workoutName,
      required this.workoutType,
      required this.numberExercises});

  final String workoutName;
  final String workoutType;
  final int numberExercises;

  @override
  Widget build(BuildContext context) {
    final images = [
      "assets/icons/workouts-images/1.svg",
      "assets/icons/workouts-images/2.svg",
      "assets/icons/workouts-images/3.svg"
    ];
    final random = Random();
    int j = random.nextInt(images.length);

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
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: ActiveYouTheme.brandLightColor,
                    child:
                        SvgPicture.asset(images[j]),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          workoutName,
                          style: const TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontSize: 14,
                            color: ActiveYouTheme.textBlackColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${workoutType.toString()} | $numberExercises exercises",
                          style: const TextStyle(
                            fontSize: 12,
                            color: ActiveYouTheme.grayDarkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset("assets/icons/interface/workout-btn.svg"),
                  //const SizedBox(width: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
