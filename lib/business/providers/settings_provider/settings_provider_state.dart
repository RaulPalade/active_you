import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_provider_state.freezed.dart';

@freezed
class SettingsProviderState with _$SettingsProviderState {
  const factory SettingsProviderState({
    @Default(false) bool tutorialCompleted,
  }) = SettingsProviderData;
}
