import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/role/role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_role.freezed.dart';
part 'person_role.g.dart';

@freezed
class PersonRole with _$PersonRole {
  const factory PersonRole({
    required Person person,
    required Role role,
}) = _PersonRole;

  factory PersonRole.fromJson(Map<String, dynamic> json) => _$PersonRoleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$$_PersonRoleToJson(this as _$_PersonRole);
}