import 'package:active_you/env/config.dart';

class ConfigProd implements Config {
  @override
  String get baseUrl => "http://localhost:8082/";
}
