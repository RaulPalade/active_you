import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:active_you/widgets/buttons/white_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            ActiveYouTheme.brandLightColor,
            ActiveYouTheme.brandDarkColor
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo/logo-man.png",
              width: 120,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Active",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins-Bold"
                  ),
                ),
                Text(
                  "You",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: "Poppins-Bold",
                    color: ActiveYouTheme.whiteColor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Everybody Can Train",
              style: TextStyle(
                fontSize: 18,
                color: ActiveYouTheme.textGreyColor,
              ),
            )
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: WhiteButton(
              title: "Get Started",
              onClick: () => {},
            ),
          ),
        ),
      ),
    );
  }
}
