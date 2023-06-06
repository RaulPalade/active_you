// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_follow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonFollow _$$_PersonFollowFromJson(Map<String, dynamic> json) =>
    _$_PersonFollow(
      from: json['from'] == null
          ? null
          : Person.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : Person.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PersonFollowToJson(_$_PersonFollow instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
