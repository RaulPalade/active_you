import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_to_register.freezed.dart';

part 'person_to_register.g.dart';

@freezed
class PersonToRegister with _$PersonToRegister {
  const factory PersonToRegister({
    required String? name,
    required String? surname,
    required String? email,
    required String? password,
  }) = _PersonToRegister;

  factory PersonToRegister.fromJson(Map<String, dynamic> json) =>
      _$PersonToRegisterFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$$_PersonToRegisterToJson(this as _$_PersonToRegister);
}
