// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonWorkout _$$_PersonWorkoutFromJson(Map<String, dynamic> json) =>
    _$_PersonWorkout(
      id: json['id'] as int?,
      idPerson: json['idPerson'] as int?,
      workout: json['workout'] == null
          ? null
          : Workout.fromJson(json['workout'] as Map<String, dynamic>),
      initDate: json['initDate'] == null
          ? null
          : DateTime.parse(json['initDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$$_PersonWorkoutToJson(_$_PersonWorkout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idPerson': instance.idPerson,
      'workout': instance.workout,
      'initDate': instance.initDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'completed': instance.completed,
    };
