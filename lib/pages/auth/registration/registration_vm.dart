import 'package:active_you/pages/auth/registration/registration_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistrationVM extends StateNotifier<RegistrationState> {
  final Ref ref;

  RegistrationVM(this.ref) : super(const RegistrationState());

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

  void setSex(String sex) {
    state = state.copyWith(sex: sex);
  }

  void setRole(String role) {
    state = state.copyWith(role: role);
  }

  void setDateOfBirth(DateTime dateOfBirth) {
    state = state.copyWith(dateOfBirth: dateOfBirth);
  }

  void setWeight(String weight) {
    state = state.copyWith(weight: double.parse(weight));
  }

  void setWeightUnit(String weightUnit) {
    state = state.copyWith(weightUnit: weightUnit);
  }

  void setHeight(String height) {
    state = state.copyWith(height: double.parse(height));
  }

  void setHeightUnit(String heightUnit) {
    state = state.copyWith(heightUnit: heightUnit);
  }
}
