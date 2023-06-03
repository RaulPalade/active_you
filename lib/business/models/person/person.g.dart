// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      id: json['id'] as int?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      sex: json['sex'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      weight: (json['weight'] as num?)?.toDouble(),
      weightUnit: json['weightUnit'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      heightUnit: json['heightUnit'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      myWorkouts: (json['myWorkouts'] as List<dynamic>?)
          ?.map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdWorkouts: (json['createdWorkouts'] as List<dynamic>?)
          ?.map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
      myGoals: (json['myGoals'] as List<dynamic>?)
          ?.map((e) => Goal.fromJson(e as Map<String, dynamic>))
          .toList(),
      following:
          (json['following'] as List<dynamic>?)?.map((e) => e as int).toList(),
      followers:
          (json['followers'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'password': instance.password,
      'sex': instance.sex,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'weight': instance.weight,
      'weightUnit': instance.weightUnit,
      'height': instance.height,
      'heightUnit': instance.heightUnit,
      'roles': instance.roles,
      'myWorkouts': instance.myWorkouts,
      'createdWorkouts': instance.createdWorkouts,
      'myGoals': instance.myGoals,
      'following': instance.following,
      'followers': instance.followers,
    };
