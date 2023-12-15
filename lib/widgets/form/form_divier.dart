import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
          child: Divider(
        color: ActiveYouTheme.grayLightColor,
      )),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Or",
          style: TextStyle(
            fontSize: 12,
            color: ActiveYouTheme.blackColor,
          ),
        ),
      ),
      Expanded(
          child: Divider(
        color: ActiveYouTheme.grayLightColor,
      )),
    ]);
  }
}
