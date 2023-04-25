import 'package:flutter/material.dart';
import 'package:ms_material_color/ms_material_color.dart';

class ActiveYouTheme {
  static MsMaterialColor scaffoldColor = MsMaterialColor(0xFFFFFFFF);

  static const Color brandLightColor = Color(0xFF9DCEFF);
  static const Color brandDarkColor = Color(0xFF92A3FD);

  static const Color secondaryLightColor = Color(0xFFEEA4CE);
  static const Color secondaryDarkColor = Color(0xFFC58BF2);

  static const Color blackColor = Color(0xFF1D1617);
  static const Color whiteColor = Color(0xFFFFFFFF);

  static const Color grayDarkColor = Color(0xFF7B6F72);
  static const Color grayMediumColor = Color(0xFFADA4A5);
  static const Color grayLightColor = Color(0xFFDDDADA);

  static const Color borderColor = Color(0xFFF7F8F8);
  static const Color cardColor = Color(0xFFF7F8F8);

  static const Color textBlackColor = blackColor;
  static const Color textGreyColor = grayDarkColor;
  static const Color textBlueColor = brandDarkColor;

  static const Color iconColor = Color(0xFF130F26);

  static const Color shadowColorBlue = Color(0xFF95ADFE);

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: scaffoldColor,
    iconTheme: const IconThemeData(color: iconColor),

    // TEXT STYLE
    textTheme: const TextTheme(
        // h1
        displayLarge: TextStyle(
          fontSize: 26,
          fontFamily: "Poppins",
        ),
        // h2
        displayMedium: TextStyle(
          fontSize: 24,
          fontFamily: "Poppins",
        ),
        // h3
        displaySmall: TextStyle(
          fontSize: 22,
          fontFamily: "Poppins",
        ),

        // s1
        titleLarge: TextStyle(
          fontSize: 18,
          fontFamily: "Poppins",
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontFamily: "Poppins",
        ),

        // p1
        bodyLarge: TextStyle(
          fontSize: 14,
          fontFamily: "Poppins",
        ),

        // p2
        bodyMedium: TextStyle(
          fontSize: 12,
          fontFamily: "Poppins",
        ),

        // p3
        bodySmall: TextStyle(
          fontSize: 10,
          fontFamily: "Poppins",
        )),
  );
}
