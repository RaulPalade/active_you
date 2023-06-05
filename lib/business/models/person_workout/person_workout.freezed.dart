// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonWorkout _$PersonWorkoutFromJson(Map<String, dynamic> json) {
  return _PersonWorkout.fromJson(json);
}

/// @nodoc
mixin _$PersonWorkout {
  int? get id => throw _privateConstructorUsedError;
  int? get idPerson => throw _privateConstructorUsedError;
  Workout? get workout => throw _privateConstructorUsedError;
  DateTime? get initDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonWorkoutCopyWith<PersonWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonWorkoutCopyWith<$Res> {
  factory $PersonWorkoutCopyWith(
          PersonWorkout value, $Res Function(PersonWorkout) then) =
      _$PersonWorkoutCopyWithImpl<$Res, PersonWorkout>;
  @useResult
  $Res call(
      {int? id,
      int? idPerson,
      Workout? workout,
      DateTime? initDate,
      DateTime? endDate,
      bool? completed});

  $WorkoutCopyWith<$Res>? get workout;
}

/// @nodoc
class _$PersonWorkoutCopyWithImpl<$Res, $Val extends PersonWorkout>
    implements $PersonWorkoutCopyWith<$Res> {
  _$PersonWorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idPerson = freezed,
    Object? workout = freezed,
    Object? initDate = freezed,
    Object? endDate = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idPerson: freezed == idPerson
          ? _value.idPerson
          : idPerson // ignore: cast_nullable_to_non_nullable
              as int?,
      workout: freezed == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout?,
      initDate: freezed == initDate
          ? _value.initDate
          : initDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutCopyWith<$Res>? get workout {
    if (_value.workout == null) {
      return null;
    }

    return $WorkoutCopyWith<$Res>(_value.workout!, (value) {
      return _then(_value.copyWith(workout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonWorkoutCopyWith<$Res>
    implements $PersonWorkoutCopyWith<$Res> {
  factory _$$_PersonWorkoutCopyWith(
          _$_PersonWorkout value, $Res Function(_$_PersonWorkout) then) =
      __$$_PersonWorkoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? idPerson,
      Workout? workout,
      DateTime? initDate,
      DateTime? endDate,
      bool? completed});

  @override
  $WorkoutCopyWith<$Res>? get workout;
}

/// @nodoc
class __$$_PersonWorkoutCopyWithImpl<$Res>
    extends _$PersonWorkoutCopyWithImpl<$Res, _$_PersonWorkout>
    implements _$$_PersonWorkoutCopyWith<$Res> {
  __$$_PersonWorkoutCopyWithImpl(
      _$_PersonWorkout _value, $Res Function(_$_PersonWorkout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idPerson = freezed,
    Object? workout = freezed,
    Object? initDate = freezed,
    Object? endDate = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_PersonWorkout(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idPerson: freezed == idPerson
          ? _value.idPerson
          : idPerson // ignore: cast_nullable_to_non_nullable
              as int?,
      workout: freezed == workout
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as Workout?,
      initDate: freezed == initDate
          ? _value.initDate
          : initDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonWorkout implements _PersonWorkout {
  const _$_PersonWorkout(
      {required this.id,
      required this.idPerson,
      required this.workout,
      required this.initDate,
      required this.endDate,
      required this.completed});

  factory _$_PersonWorkout.fromJson(Map<String, dynamic> json) =>
      _$$_PersonWorkoutFromJson(json);

  @override
  final int? id;
  @override
  final int? idPerson;
  @override
  final Workout? workout;
  @override
  final DateTime? initDate;
  @override
  final DateTime? endDate;
  @override
  final bool? completed;

  @override
  String toString() {
    return 'PersonWorkout(id: $id, idPerson: $idPerson, workout: $workout, initDate: $initDate, endDate: $endDate, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonWorkout &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idPerson, idPerson) ||
                other.idPerson == idPerson) &&
            (identical(other.workout, workout) || other.workout == workout) &&
            (identical(other.initDate, initDate) ||
                other.initDate == initDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, idPerson, workout, initDate, endDate, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonWorkoutCopyWith<_$_PersonWorkout> get copyWith =>
      __$$_PersonWorkoutCopyWithImpl<_$_PersonWorkout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonWorkoutToJson(
      this,
    );
  }
}

abstract class _PersonWorkout implements PersonWorkout {
  const factory _PersonWorkout(
      {required final int? id,
      required final int? idPerson,
      required final Workout? workout,
      required final DateTime? initDate,
      required final DateTime? endDate,
      required final bool? completed}) = _$_PersonWorkout;

  factory _PersonWorkout.fromJson(Map<String, dynamic> json) =
      _$_PersonWorkout.fromJson;

  @override
  int? get id;
  @override
  int? get idPerson;
  @override
  Workout? get workout;
  @override
  DateTime? get initDate;
  @override
  DateTime? get endDate;
  @override
  bool? get completed;
  @override
  @JsonKey(ignore: true)
  _$$_PersonWorkoutCopyWith<_$_PersonWorkout> get copyWith =>
      throw _privateConstructorUsedError;
}
