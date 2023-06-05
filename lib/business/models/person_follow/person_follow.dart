import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_follow.freezed.dart';
part 'person_follow.g.dart';

@freezed
class PersonFollow with _$PersonFollow {
  const factory PersonFollow({
    required int? from,
    required int? to,
}) = _PersonFollow;

  factory PersonFollow.fromJson(Map<String, dynamic> json) => _$PersonFollowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$$_PersonFollowToJson(this as _$_PersonFollow);
}