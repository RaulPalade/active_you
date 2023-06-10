import 'package:active_you/business/models/exercise/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout.freezed.dart';

part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    required int? id,
    required int? createdById,
    required String? name,
    required String? type,
    required List<Exercise>? exercises,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$$_WorkoutToJson(this as _$_Workout);
}
