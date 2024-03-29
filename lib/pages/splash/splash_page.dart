import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/business/providers/splash_page_provider.dart';
import 'package:active_you/business/utils/SecureStorageManager.dart';
import 'package:active_you/pages/auth/login/login_page.dart';
import 'package:active_you/pages/page_coordinator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:active_you/theme/active_you_theme.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(splashPageProvider, (previous, next) {
      if (!(previous?.endInit ?? false) && next.endInit) {

        SecureStorageManager storage = SecureStorageManager();
        final response = storage.readValue(storage.idTokenKey);

        response.then((String? idToken) {
          if (idToken == null) {
            navigateToLoginPage(context);
            return;
          }
          DateTime expirationDate = JwtDecoder.getExpirationDate(idToken);
          final tokenMap = JwtDecoder.decode(idToken);
          String emailLoggedUser = tokenMap["sub"];

          if (expirationDate.isBefore(DateTime.now())) {
            navigateToLoginPage(context);
          } else {
            final response = ref
                .read(sessionProvider.notifier)
                .getLoggedPerson(emailLoggedUser);
            response.then((bool success) {
              if (success) {
                navigateToPageCoordinator(context);
              }
            });
          }
        });
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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

  void navigateToLoginPage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
      (route) => false,
    );
  }

  void navigateToPageCoordinator(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const PageCoordinator(),
      ),
      (route) => false,
    );
  }
}
