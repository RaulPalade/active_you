import 'package:active_you/business/providers/preferences.dart';
import 'package:active_you/business/providers/settings_provider/settings_provider_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsProvider extends StateNotifier<SettingsProviderState> {
  final Ref ref;

  SettingsProvider(this.ref) : super(const SettingsProviderData()) {
    final pref = ref.read(preferencesProvider);
    state = state.copyWith(tutorialCompleted: pref.tutorialCompleted);
  }

  void setTutorialCompleted(bool value) {
    final pref = ref.read(preferencesProvider);
    pref.tutorialCompleted = value;
    state = state.copyWith(tutorialCompleted: true);
  }
}

final settingsProvider =
    StateNotifierProvider<SettingsProvider, SettingsProviderState>(
        (ref) => SettingsProvider(ref));

final darkModeProvider = Provider<bool>((ref) {
  return ref.watch(settingsProvider).tutorialCompleted;
});
