import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class SimpleTab extends StatelessWidget {
  const SimpleTab({Key? key, required this.title, required this.isActive})
      : super(key: key);

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Tab(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Poppins-Regular",
              fontSize: 14,
              color: isActive
                  ? Colors.white
                  : ActiveYouTheme.grayDarkColor,
            ),
          ),
        ),
      ],
    );
  }
}
