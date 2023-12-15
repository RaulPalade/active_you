// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Workout _$$_WorkoutFromJson(Map<String, dynamic> json) => _$_Workout(
      id: json['id'] as String?,
      createdById: json['createdById'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      completed: json['completed'] as bool?,
      initDate: json['initDate'] == null
          ? null
          : DateTime.parse(json['initDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      exercises: (json['exercises'] as List<dynamic>?)
          ?.map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutToJson(_$_Workout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdById': instance.createdById,
      'name': instance.name,
      'type': instance.type,
      'completed': instance.completed,
      'initDate': instance.initDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'exercises': instance.exercises,
    };
