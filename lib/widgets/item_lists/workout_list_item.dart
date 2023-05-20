import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutListItem extends StatelessWidget {
  const WorkoutListItem(
      {Key? key,
      required this.workoutName,
      required this.calories,
      required this.minutes,
      required this.onClick})
      : super(key: key);

  final String workoutName;
  final int calories;
  final int minutes;
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
                    child: SvgPicture.asset("assets/icons/workouts-images/3.svg"),
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
                          "${calories.toString()} Calories burn | $minutes minutes",
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