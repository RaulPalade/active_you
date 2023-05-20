// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Workout _$WorkoutFromJson(Map<String, dynamic> json) {
  return _Workout.fromJson(json);
}

/// @nodoc
mixin _$Workout {
  int get id => throw _privateConstructorUsedError;
  int? get createdBy => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateTime? get initDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  List<Person>? get persons => throw _privateConstructorUsedError;
  List<Exercise>? get exercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res, Workout>;
  @useResult
  $Res call(
      {int id,
      int? createdBy,
      String? name,
      String? type,
      DateTime? initDate,
      DateTime? endDate,
      bool? completed,
      List<Person>? persons,
      List<Exercise>? exercises});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res, $Val extends Workout>
    implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? initDate = freezed,
    Object? endDate = freezed,
    Object? completed = freezed,
    Object? persons = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      persons: freezed == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<Person>?,
      exercises: freezed == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$_WorkoutCopyWith(
          _$_Workout value, $Res Function(_$_Workout) then) =
      __$$_WorkoutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? createdBy,
      String? name,
      String? type,
      DateTime? initDate,
      DateTime? endDate,
      bool? completed,
      List<Person>? persons,
      List<Exercise>? exercises});
}

/// @nodoc
class __$$_WorkoutCopyWithImpl<$Res>
    extends _$WorkoutCopyWithImpl<$Res, _$_Workout>
    implements _$$_WorkoutCopyWith<$Res> {
  __$$_WorkoutCopyWithImpl(_$_Workout _value, $Res Function(_$_Workout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? initDate = freezed,
    Object? endDate = freezed,
    Object? completed = freezed,
    Object? persons = freezed,
    Object? exercises = freezed,
  }) {
    return _then(_$_Workout(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      persons: freezed == persons
          ? _value._persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<Person>?,
      exercises: freezed == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Workout implements _Workout {
  const _$_Workout(
      {required this.id,
      required this.createdBy,
      required this.name,
      required this.type,
      required this.initDate,
      required this.endDate,
      required this.completed,
      required final List<Person>? persons,
      required final List<Exercise>? exercises})
      : _persons = persons,
        _exercises = exercises;

  factory _$_Workout.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutFromJson(json);

  @override
  final int id;
  @override
  final int? createdBy;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final DateTime? initDate;
  @override
  final DateTime? endDate;
  @override
  final bool? completed;
  final List<Person>? _persons;
  @override
  List<Person>? get persons {
    final value = _persons;
    if (value == null) return null;
    if (_persons is EqualUnmodifiableListView) return _persons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Exercise>? _exercises;
  @override
  List<Exercise>? get exercises {
    final value = _exercises;
    if (value == null) return null;
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Workout(id: $id, createdBy: $createdBy, name: $name, type: $type, initDate: $initDate, endDate: $endDate, completed: $completed, persons: $persons, exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Workout &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.initDate, initDate) ||
                other.initDate == initDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            const DeepCollectionEquality().equals(other._persons, _persons) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdBy,
      name,
      type,
      initDate,
      endDate,
      completed,
      const DeepCollectionEquality().hash(_persons),
      const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutCopyWith<_$_Workout> get copyWith =>
      __$$_WorkoutCopyWithImpl<_$_Workout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutToJson(
      this,
    );
  }
}

abstract class _Workout implements Workout {
  const factory _Workout(
      {required final int id,
      required final int? createdBy,
      required final String? name,
      required final String? type,
      required final DateTime? initDate,
      required final DateTime? endDate,
      required final bool? completed,
      required final List<Person>? persons,
      required final List<Exercise>? exercises}) = _$_Workout;

  factory _Workout.fromJson(Map<String, dynamic> json) = _$_Workout.fromJson;

  @override
  int get id;
  @override
  int? get createdBy;
  @override
  String? get name;
  @override
  String? get type;
  @override
  DateTime? get initDate;
  @override
  DateTime? get endDate;
  @override
  bool? get completed;
  @override
  List<Person>? get persons;
  @override
  List<Exercise>? get exercises;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutCopyWith<_$_Workout> get copyWith =>
      throw _privateConstructorUsedError;
}
