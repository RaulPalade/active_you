// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Goal _$$_GoalFromJson(Map<String, dynamic> json) => _$_Goal(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      daysPerWeek: json['daysPerWeek'] as int?,
      initDate: json['initDate'] == null
          ? null
          : DateTime.parse(json['initDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$$_GoalToJson(_$_Goal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'weight': instance.weight,
      'daysPerWeek': instance.daysPerWeek,
      'initDate': instance.initDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'completed': instance.completed,
    };
