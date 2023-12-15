// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_goal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateGoalState {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  int get daysPerWeek => throw _privateConstructorUsedError;
  DateTime? get initDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateGoalStateCopyWith<CreateGoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGoalStateCopyWith<$Res> {
  factory $CreateGoalStateCopyWith(
          CreateGoalState value, $Res Function(CreateGoalState) then) =
      _$CreateGoalStateCopyWithImpl<$Res, CreateGoalState>;
  @useResult
  $Res call(
      {String name,
      String type,
      double weight,
      int daysPerWeek,
      DateTime? initDate,
      DateTime? endDate,
      bool completed});
}

/// @nodoc
class _$CreateGoalStateCopyWithImpl<$Res, $Val extends CreateGoalState>
    implements $CreateGoalStateCopyWith<$Res> {
  _$CreateGoalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? weight = null,
    Object? daysPerWeek = null,
    Object? initDate = freezed,
    Object? endDate = freezed,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      daysPerWeek: null == daysPerWeek
          ? _value.daysPerWeek
          : daysPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      initDate: freezed == initDate
          ? _value.initDate
          : initDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGoalStateDataCopyWith<$Res>
    implements $CreateGoalStateCopyWith<$Res> {
  factory _$$CreateGoalStateDataCopyWith(_$CreateGoalStateData value,
          $Res Function(_$CreateGoalStateData) then) =
      __$$CreateGoalStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      double weight,
      int daysPerWeek,
      DateTime? initDate,
      DateTime? endDate,
      bool completed});
}

/// @nodoc
class __$$CreateGoalStateDataCopyWithImpl<$Res>
    extends _$CreateGoalStateCopyWithImpl<$Res, _$CreateGoalStateData>
    implements _$$CreateGoalStateDataCopyWith<$Res> {
  __$$CreateGoalStateDataCopyWithImpl(
      _$CreateGoalStateData _value, $Res Function(_$CreateGoalStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? weight = null,
    Object? daysPerWeek = null,
    Object? initDate = freezed,
    Object? endDate = freezed,
    Object? completed = null,
  }) {
    return _then(_$CreateGoalStateData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      daysPerWeek: null == daysPerWeek
          ? _value.daysPerWeek
          : daysPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      initDate: freezed == initDate
          ? _value.initDate
          : initDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateGoalStateData implements CreateGoalStateData {
  const _$CreateGoalStateData(
      {this.name = "",
      this.type = "",
      this.weight = 0.0,
      this.daysPerWeek = 0,
      this.initDate,
      this.endDate,
      this.completed = false});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final double weight;
  @override
  @JsonKey()
  final int daysPerWeek;
  @override
  final DateTime? initDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final bool completed;

  @override
  String toString() {
    return 'CreateGoalState(name: $name, type: $type, weight: $weight, daysPerWeek: $daysPerWeek, initDate: $initDate, endDate: $endDate, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGoalStateData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.daysPerWeek, daysPerWeek) ||
                other.daysPerWeek == daysPerWeek) &&
            (identical(other.initDate, initDate) ||
                other.initDate == initDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type, weight, daysPerWeek,
      initDate, endDate, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGoalStateDataCopyWith<_$CreateGoalStateData> get copyWith =>
      __$$CreateGoalStateDataCopyWithImpl<_$CreateGoalStateData>(
          this, _$identity);
}

abstract class CreateGoalStateData implements CreateGoalState {
  const factory CreateGoalStateData(
      {final String name,
      final String type,
      final double weight,
      final int daysPerWeek,
      final DateTime? initDate,
      final DateTime? endDate,
      final bool completed}) = _$CreateGoalStateData;

  @override
  String get name;
  @override
  String get type;
  @override
  double get weight;
  @override
  int get daysPerWeek;
  @override
  DateTime? get initDate;
  @override
  DateTime? get endDate;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$CreateGoalStateDataCopyWith<_$CreateGoalStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
