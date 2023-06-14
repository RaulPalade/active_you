import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static const String _tutorialCompleted = "TUTORIAL_COMPLETED";
  late SharedPreferences preferences;

  Future<void> initAsync() async {
    preferences = await SharedPreferences.getInstance();
  }

  bool get tutorialCompleted =>
      preferences.getBool(_tutorialCompleted) ?? false;

  set tutorialCompleted(bool value) =>
      preferences.setBool(_tutorialCompleted, value);
}

final preferencesProvider = Provider<Preferences>((ref) {
  return Preferences();
});
