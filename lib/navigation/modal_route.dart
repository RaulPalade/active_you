import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/intro/welcome_page.dart';
import 'package:flutter/material.dart';

import 'no_endpoint_found.dart';

PageRoute modalRoute(RouteSettings settings) {
  switch (settings.name) {
    case EndPoint.welcomePage:
      return MaterialPageRoute(
          builder: (_) => const WelcomePage(), settings: settings);

    default:
      return MaterialPageRoute(
          builder: (_) =>
              NoEndpointFound(text: "404 NOT FOUND \n ${settings.name}"));
  }
}
