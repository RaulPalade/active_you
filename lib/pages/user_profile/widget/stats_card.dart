import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({Key? key, required this.value, required this.unitMeasure})
      : super(key: key);

  final String value;
  final String unitMeasure;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontFamily: "Poppins-Medium",
              fontSize: 14,
              foreground: Paint()
                ..shader = const LinearGradient(colors: [
                  ActiveYouTheme.brandLightColor,
                  ActiveYouTheme.brandDarkColor,
                ]).createShader(
                  const Rect.fromLTWH(0.0, 0.0, 320.0, 80.0),
                ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            unitMeasure,
            style: const TextStyle(
              fontSize: 12,
              color: ActiveYouTheme.grayDarkColor,
            ),
          ),
        ],
      ),
    );
  }
}
