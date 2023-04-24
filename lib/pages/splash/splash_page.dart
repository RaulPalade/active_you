import 'package:active_you/business/providers/splash_page_provider.dart';
import 'package:active_you/pages/auth/login_page.dart';
import 'package:active_you/pages/intro/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(splashPageProvider, (previous, next) {
      if (!(previous?.endInit ?? false) && next.endInit) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
            (route) => false);
      }
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo/logo-man.png", width: 80,),
            const Text("ACTIVE YOU"),
          ],
        ),
      ),
    );
  }
}
