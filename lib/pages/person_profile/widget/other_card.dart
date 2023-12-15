import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

import 'card_row.dart';

class OtherCard extends StatelessWidget {
  const OtherCard({super.key});

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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Text(
              "Other",
              style: TextStyle(
                fontFamily: "Poppins-SemiBold",
                fontSize: 16,
              ),
            ),
          ),
          CardRow(
            iconPath: "assets/icons/interface/shield.svg",
            title: "Privacy Policy",
          ),
          CardRow(
            iconPath: "assets/icons/interface/setting.svg",
            title: "Settings",
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
