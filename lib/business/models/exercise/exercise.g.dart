// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exercise _$$_ExerciseFromJson(Map<String, dynamic> json) => _$_Exercise(
      id: json['id'] as int,
      name: json['name'] as String?,
      repetitions: json['repetitions'] as int?,
      series: json['series'] as int?,
      onWorkouts: (json['onWorkouts'] as List<dynamic>?)
          ?.map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExerciseToJson(_$_Exercise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'repetitions': instance.repetitions,
      'series': instance.series,
      'onWorkouts': instance.onWorkouts,
    };
