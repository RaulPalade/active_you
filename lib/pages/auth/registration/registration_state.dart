import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String email,
    @Default("") String password,
    @Default("Male") String sex,
    @Default("USER") String role,
    DateTime? dateOfBirth,
    @Default(0.0) double weight,
    @Default("KG") String weightUnit,
    @Default(0.0) double height,
    @Default("CM") String heightUnit,
  }) = RegistrationStateData;
}
