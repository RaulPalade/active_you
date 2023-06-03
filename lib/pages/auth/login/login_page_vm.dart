import 'package:active_you/pages/auth/login/login_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPageVM extends StateNotifier<LoginPageState> {
  final Ref ref;

  LoginPageVM(this.ref) : super(const LoginPageState());

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setHiddenPassword() {
    state = state.copyWith(passwordHidden: !state.passwordHidden);
  }
}
