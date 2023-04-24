import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/auth/login_page.dart';
import 'package:active_you/pages/intro/onboarding_page.dart';
import 'package:active_you/pages/intro/welcome_page.dart';
import 'package:flutter/material.dart';

import 'no_endpoint_found.dart';

PageRoute modalRoute(RouteSettings settings) {
  switch (settings.name) {
    case EndPoint.welcomePage:
      return MaterialPageRoute(
          builder: (_) => const WelcomePage(), settings: settings);

    case EndPoint.onBoardingPage:
      return MaterialPageRoute(
          builder: (_) => const OnBoardingPage(), settings: settings);

    case EndPoint.login:
      return MaterialPageRoute(
          builder: (_) => const LoginPage(), settings: settings);

    default:
      return MaterialPageRoute(
          builder: (_) =>
              NoEndpointFound(text: "404 NOT FOUND \n ${settings.name}"));
  }
}
