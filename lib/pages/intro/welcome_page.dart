import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/buttons/login_button.dart';
import '../../widgets/buttons/next_button.dart';
import '../../widgets/buttons/secondary_button.dart';
import '../../widgets/buttons/white_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WELCOME PAGE")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [Center(child: Text("WELCOME"))],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: WhiteButton(
          title: "Get Started",
          onClick: () => {},
        ),
      ),
    );
  }
}
