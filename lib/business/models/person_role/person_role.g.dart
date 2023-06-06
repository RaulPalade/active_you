// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonRole _$$_PersonRoleFromJson(Map<String, dynamic> json) =>
    _$_PersonRole(
      person: Person.fromJson(json['person'] as Map<String, dynamic>),
      role: Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PersonRoleToJson(_$_PersonRole instance) =>
    <String, dynamic>{
      'person': instance.person,
      'role': instance.role,
    };
