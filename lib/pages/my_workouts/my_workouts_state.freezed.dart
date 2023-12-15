// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_workouts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyWorkoutsState {
  List<Workout>? get activeWorkouts => throw _privateConstructorUsedError;
  List<Workout>? get completedWorkouts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyWorkoutsStateCopyWith<MyWorkoutsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyWorkoutsStateCopyWith<$Res> {
  factory $MyWorkoutsStateCopyWith(
          MyWorkoutsState value, $Res Function(MyWorkoutsState) then) =
      _$MyWorkoutsStateCopyWithImpl<$Res, MyWorkoutsState>;
  @useResult
  $Res call({List<Workout>? activeWorkouts, List<Workout>? completedWorkouts});
}

/// @nodoc
class _$MyWorkoutsStateCopyWithImpl<$Res, $Val extends MyWorkoutsState>
    implements $MyWorkoutsStateCopyWith<$Res> {
  _$MyWorkoutsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeWorkouts = freezed,
    Object? completedWorkouts = freezed,
  }) {
    return _then(_value.copyWith(
      activeWorkouts: freezed == activeWorkouts
          ? _value.activeWorkouts
          : activeWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>?,
      completedWorkouts: freezed == completedWorkouts
          ? _value.completedWorkouts
          : completedWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyWorkoutsStateDataCopyWith<$Res>
    implements $MyWorkoutsStateCopyWith<$Res> {
  factory _$$MyWorkoutsStateDataCopyWith(_$MyWorkoutsStateData value,
          $Res Function(_$MyWorkoutsStateData) then) =
      __$$MyWorkoutsStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Workout>? activeWorkouts, List<Workout>? completedWorkouts});
}

/// @nodoc
class __$$MyWorkoutsStateDataCopyWithImpl<$Res>
    extends _$MyWorkoutsStateCopyWithImpl<$Res, _$MyWorkoutsStateData>
    implements _$$MyWorkoutsStateDataCopyWith<$Res> {
  __$$MyWorkoutsStateDataCopyWithImpl(
      _$MyWorkoutsStateData _value, $Res Function(_$MyWorkoutsStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeWorkouts = freezed,
    Object? completedWorkouts = freezed,
  }) {
    return _then(_$MyWorkoutsStateData(
      activeWorkouts: freezed == activeWorkouts
          ? _value._activeWorkouts
          : activeWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>?,
      completedWorkouts: freezed == completedWorkouts
          ? _value._completedWorkouts
          : completedWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>?,
    ));
  }
}

/// @nodoc

class _$MyWorkoutsStateData implements MyWorkoutsStateData {
  const _$MyWorkoutsStateData(
      {final List<Workout>? activeWorkouts = const [],
      final List<Workout>? completedWorkouts = const []})
      : _activeWorkouts = activeWorkouts,
        _completedWorkouts = completedWorkouts;

  final List<Workout>? _activeWorkouts;
  @override
  @JsonKey()
  List<Workout>? get activeWorkouts {
    final value = _activeWorkouts;
    if (value == null) return null;
    if (_activeWorkouts is EqualUnmodifiableListView) return _activeWorkouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Workout>? _completedWorkouts;
  @override
  @JsonKey()
  List<Workout>? get completedWorkouts {
    final value = _completedWorkouts;
    if (value == null) return null;
    if (_completedWorkouts is EqualUnmodifiableListView)
      return _completedWorkouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyWorkoutsState(activeWorkouts: $activeWorkouts, completedWorkouts: $completedWorkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyWorkoutsStateData &&
            const DeepCollectionEquality()
                .equals(other._activeWorkouts, _activeWorkouts) &&
            const DeepCollectionEquality()
                .equals(other._completedWorkouts, _completedWorkouts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeWorkouts),
      const DeepCollectionEquality().hash(_completedWorkouts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyWorkoutsStateDataCopyWith<_$MyWorkoutsStateData> get copyWith =>
      __$$MyWorkoutsStateDataCopyWithImpl<_$MyWorkoutsStateData>(
          this, _$identity);
}

abstract class MyWorkoutsStateData implements MyWorkoutsState {
  const factory MyWorkoutsStateData(
      {final List<Workout>? activeWorkouts,
      final List<Workout>? completedWorkouts}) = _$MyWorkoutsStateData;

  @override
  List<Workout>? get activeWorkouts;
  @override
  List<Workout>? get completedWorkouts;
  @override
  @JsonKey(ignore: true)
  _$$MyWorkoutsStateDataCopyWith<_$MyWorkoutsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
