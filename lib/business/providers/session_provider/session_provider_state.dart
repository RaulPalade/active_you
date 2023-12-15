import 'package:active_you/business/models/person/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_provider_state.freezed.dart';

@freezed
class SessionProviderState with _$SessionProviderState {
  const factory SessionProviderState({
    Person? currentPerson,
    @Default(false) bool loading,
  }) = SessionProviderStateData;
}
