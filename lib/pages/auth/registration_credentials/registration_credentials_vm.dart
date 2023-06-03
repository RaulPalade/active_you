import 'package:active_you/pages/auth/registration_credentials/registration_credentials_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistrationCredentialsVM
    extends StateNotifier<RegistrationCredentialsPageState> {
  final Ref ref;

  RegistrationCredentialsVM(this.ref)
      : super(const RegistrationCredentialsPageState());

  void setFirstName(String firstName) {
    state = state.copyWith(firstName: firstName);
  }

  void setLastName(String lastName) {
    state = state.copyWith(lastName: lastName);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }
}
