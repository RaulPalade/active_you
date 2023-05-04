import 'package:active_you/business/providers/splash_page_provider.dart';
import 'package:active_you/pages/auth/success_registration_page.dart';
import 'package:active_you/pages/intro/welcome_page.dart';
import 'package:active_you/pages/user_profile/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:active_you/theme/active_you_theme.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(splashPageProvider, (previous, next) {
      if (!(previous?.endInit ?? false) && next.endInit) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const UserProfilePage(),
            ),
            (route) => false);
      }
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo/logo-man.png",
              width: 180,
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
                      fontFamily: "Poppins-Bold"),
                ),
                Text(
                  "You",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: "Poppins-Bold",
                    color: ActiveYouTheme.secondaryLightColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
