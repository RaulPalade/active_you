import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

import 'card_row.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Text(
              "Status",
              style: TextStyle(
                fontFamily: "Poppins-SemiBold",
                fontSize: 16,
              ),
            ),
          ),
          GestureDetector(
            child: const CardRow(
              iconPath: "assets/icons/profile.svg",
              title: "Personal Workouts",
            ),
            onTap: () {},
          ),
          GestureDetector(
            child: const CardRow(
              iconPath: "assets/icons/interface/document.svg",
              title: "Goals",
            ),
            onTap: () => Navigator.pushNamed(context, EndPoint.myGoals),
          ),
          GestureDetector(
            child: const CardRow(
              iconPath: "assets/icons/interface/graph.svg",
              title: "Completed Workouts",
            ),
            onTap: () {},
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
