// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Workout _$$_WorkoutFromJson(Map<String, dynamic> json) => _$_Workout(
      id: json['id'] as int,
      createdBy: json['createdBy'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      initDate: json['initDate'] == null
          ? null
          : DateTime.parse(json['initDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      completed: json['completed'] as bool?,
      persons: (json['persons'] as List<dynamic>?)
          ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
      exercises: (json['exercises'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutToJson(_$_Workout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'name': instance.name,
      'type': instance.type,
      'initDate': instance.initDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'completed': instance.completed,
      'persons': instance.persons,
      'exercises': instance.exercises,
    };
