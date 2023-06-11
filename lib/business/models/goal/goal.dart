import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal.freezed.dart';
part 'goal.g.dart';

@freezed
class Goal with _$Goal {
  const factory Goal({
    required int? id,
    required String? name,
    required String? type,
    required double? weight,
    required int? daysPerWeek,
    required DateTime? initDate,
    required DateTime? endDate,
    required bool? completed,
  }) = _Goal;

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$$_GoalToJson(this as _$_Goal);
}
