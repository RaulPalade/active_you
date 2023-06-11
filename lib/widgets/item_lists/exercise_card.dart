import 'package:active_you/business/models/exercise/exercise.dart';
import 'package:active_you/pages/person_profile/widget/card_row.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({super.key, required this.exercise});

  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Text(
              exercise.name!,
              style: const TextStyle(
                fontFamily: "Poppins-SemiBold",
                fontSize: 16,
              ),
            ),
          ),
          CardRow(
            iconPath: "assets/icons/interface/chart.svg",
            title: "Ripetizioni: ${exercise.repetitions}",
            onClick: () {},
          ),
          CardRow(
            iconPath: "assets/icons/interface/time-circle.svg",
            title: "Serie: ${exercise.series}",
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
