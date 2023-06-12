import 'dart:io';

import 'package:active_you/env/config.dart';

class ConfigProd implements Config {
  @override
  String get baseUrl {
    if (Platform.isAndroid) {
      return "http://10.0.2.2:8080/";
    } else {
      return "http://localhost:8080/";
    }
  }
}
