import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String? id,
    required String? name,
    required int? repetitions,
    required int? series,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$$_ExerciseToJson(this as _$_Exercise);
}
