import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_credentials_page_state.freezed.dart';

@freezed
class RegistrationCredentialsPageState with _$RegistrationCredentialsPageState {
  const factory RegistrationCredentialsPageState({
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String email,
    @Default("") String password,
  }) = RegistrationCredentialsPageData;
}
