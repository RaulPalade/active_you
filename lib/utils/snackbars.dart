import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class SnackBars {
  static void showSuccessSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontFamily: "Poppins-Medium",
          fontSize: 14,
          color: ActiveYouTheme.whiteColor,
        ),
      ),
      backgroundColor: ActiveYouTheme.brandDarkColor,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showFailureSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontFamily: "Poppins-Medium",
          fontSize: 14,
          color: ActiveYouTheme.whiteColor,
        ),
      ),
      backgroundColor: ActiveYouTheme.secondaryDarkColor,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}