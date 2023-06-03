import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/auth/login/login_page.dart';
import 'package:active_you/pages/auth/registration_credentials_page.dart';
import 'package:active_you/pages/auth/registration_info_page.dart';
import 'package:active_you/pages/auth/success_registration_page.dart';
import 'package:active_you/pages/home/home_page.dart';
import 'package:active_you/pages/intro/onboarding_page.dart';
import 'package:active_you/pages/intro/welcome_page.dart';
import 'package:active_you/pages/page_coordinator.dart';
import 'package:active_you/pages/person_profile/person_profile_page.dart';
import 'package:active_you/pages/users_and_trainers/person_detail_page.dart';
import 'package:flutter/material.dart';

import 'no_endpoint_found.dart';

PageRoute modalRoute(RouteSettings settings) {
  switch (settings.name) {
    case EndPoint.welcomePage:
      return MaterialPageRoute(
          builder: (_) => const WelcomePage(), settings: settings);

    case EndPoint.pageCoordinator:
      return MaterialPageRoute(
          builder: (_) => const PageCoordinator(), settings: settings);

    case EndPoint.onBoardingPage:
      return MaterialPageRoute(
          builder: (_) => OnBoardingPage(), settings: settings);

    case EndPoint.login:
      return MaterialPageRoute(
          builder: (_) => const LoginPage(), settings: settings);

    case EndPoint.registerCredentials:
      return MaterialPageRoute(
          builder: (_) => const RegistrationCredentialsPage(),
          settings: settings);

    case EndPoint.registerInfo:
      return MaterialPageRoute(
          builder: (_) => const RegistrationInfoPage(), settings: settings);

    case EndPoint.successRegistration:
      return MaterialPageRoute(
          builder: (_) => const SuccessRegistrationPage(), settings: settings);

    case EndPoint.home:
      return MaterialPageRoute(
          builder: (_) => const HomePage(), settings: settings);

    case EndPoint.personProfile:
      return MaterialPageRoute(
          builder: (_) => const PersonProfilePage(), settings: settings);

    case EndPoint.personDetail:
      return MaterialPageRoute(
          builder: (_) => const PersonDetailPage(), settings: settings);

    default:
      return MaterialPageRoute(
          builder: (_) =>
              NoEndpointFound(text: "404 NOT FOUND \n ${settings.name}"));
  }
}
