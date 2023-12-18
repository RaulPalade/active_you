import 'dart:developer';
import 'dart:math';

import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/explore_workouts/explore_workouts_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/white_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutBigCard extends ConsumerWidget {
  const WorkoutBigCard({super.key, required this.workout});

  final Workout workout;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(workout);
    final colors = [
      ActiveYouTheme.workoutCardBlue,
      ActiveYouTheme.workoutCard1,
      ActiveYouTheme.workoutCard2,
      ActiveYouTheme.workoutCard3,
      ActiveYouTheme.workoutCard4,
      ActiveYouTheme.workoutCard5,
    ];

    final images = [
      "assets/icons/workouts-images/1.svg",
      "assets/icons/workouts-images/2.svg",
      "assets/icons/workouts-images/3.svg"
    ];
    final random = Random();
    int i = random.nextInt(colors.length);
    int j = random.nextInt(images.length);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colors[i],
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
                    workout.name!,
                    style: const TextStyle(
                      fontFamily: "Poppins-Medium",
                      fontSize: 18,
                      color: ActiveYouTheme.textBlackColor,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    workout.exercises!.length > 1
                        ? "${workout.exercises!.length} Exercises"
                        : "${workout.exercises!.length} Exercise",
                    style: const TextStyle(
                      fontSize: 12,
                      color: ActiveYouTheme.grayDarkColor,
                    ),
                  ),
                  Text(
                    workout.type!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: ActiveYouTheme.grayDarkColor,
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    height: 40,
                    child: WhiteButton(
                        title: "View More",
                        onClick: () {
                          Navigator.pushNamed(context, EndPoint.workoutDetail,
                              arguments: workout);
                          ref.read(exploreWorkoutsPageProvider.notifier).getWorkoutAuthor(workout);
                        }),
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: MediaQuery
                    .of(context)
                    .size
                    .width / 7,
                backgroundColor: Colors.white70,
                child: SvgPicture.asset(
                  images[j],
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
