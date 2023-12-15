// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_goals_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyGoalsState {
  List<Goal>? get activeGoals => throw _privateConstructorUsedError;
  List<Goal>? get completedGoals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyGoalsStateCopyWith<MyGoalsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyGoalsStateCopyWith<$Res> {
  factory $MyGoalsStateCopyWith(
          MyGoalsState value, $Res Function(MyGoalsState) then) =
      _$MyGoalsStateCopyWithImpl<$Res, MyGoalsState>;
  @useResult
  $Res call({List<Goal>? activeGoals, List<Goal>? completedGoals});
}

/// @nodoc
class _$MyGoalsStateCopyWithImpl<$Res, $Val extends MyGoalsState>
    implements $MyGoalsStateCopyWith<$Res> {
  _$MyGoalsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeGoals = freezed,
    Object? completedGoals = freezed,
  }) {
    return _then(_value.copyWith(
      activeGoals: freezed == activeGoals
          ? _value.activeGoals
          : activeGoals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
      completedGoals: freezed == completedGoals
          ? _value.completedGoals
          : completedGoals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyGoalsStateDataCopyWith<$Res>
    implements $MyGoalsStateCopyWith<$Res> {
  factory _$$MyGoalsStateDataCopyWith(
          _$MyGoalsStateData value, $Res Function(_$MyGoalsStateData) then) =
      __$$MyGoalsStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Goal>? activeGoals, List<Goal>? completedGoals});
}

/// @nodoc
class __$$MyGoalsStateDataCopyWithImpl<$Res>
    extends _$MyGoalsStateCopyWithImpl<$Res, _$MyGoalsStateData>
    implements _$$MyGoalsStateDataCopyWith<$Res> {
  __$$MyGoalsStateDataCopyWithImpl(
      _$MyGoalsStateData _value, $Res Function(_$MyGoalsStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeGoals = freezed,
    Object? completedGoals = freezed,
  }) {
    return _then(_$MyGoalsStateData(
      activeGoals: freezed == activeGoals
          ? _value._activeGoals
          : activeGoals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
      completedGoals: freezed == completedGoals
          ? _value._completedGoals
          : completedGoals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
    ));
  }
}

/// @nodoc

class _$MyGoalsStateData implements MyGoalsStateData {
  const _$MyGoalsStateData(
      {final List<Goal>? activeGoals = const [],
      final List<Goal>? completedGoals = const []})
      : _activeGoals = activeGoals,
        _completedGoals = completedGoals;

  final List<Goal>? _activeGoals;
  @override
  @JsonKey()
  List<Goal>? get activeGoals {
    final value = _activeGoals;
    if (value == null) return null;
    if (_activeGoals is EqualUnmodifiableListView) return _activeGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Goal>? _completedGoals;
  @override
  @JsonKey()
  List<Goal>? get completedGoals {
    final value = _completedGoals;
    if (value == null) return null;
    if (_completedGoals is EqualUnmodifiableListView) return _completedGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyGoalsState(activeGoals: $activeGoals, completedGoals: $completedGoals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyGoalsStateData &&
            const DeepCollectionEquality()
                .equals(other._activeGoals, _activeGoals) &&
            const DeepCollectionEquality()
                .equals(other._completedGoals, _completedGoals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeGoals),
      const DeepCollectionEquality().hash(_completedGoals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyGoalsStateDataCopyWith<_$MyGoalsStateData> get copyWith =>
      __$$MyGoalsStateDataCopyWithImpl<_$MyGoalsStateData>(this, _$identity);
}

abstract class MyGoalsStateData implements MyGoalsState {
  const factory MyGoalsStateData(
      {final List<Goal>? activeGoals,
      final List<Goal>? completedGoals}) = _$MyGoalsStateData;

  @override
  List<Goal>? get activeGoals;
  @override
  List<Goal>? get completedGoals;
  @override
  @JsonKey(ignore: true)
  _$$MyGoalsStateDataCopyWith<_$MyGoalsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
