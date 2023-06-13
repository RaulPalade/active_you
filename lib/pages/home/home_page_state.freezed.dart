// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageState {
  PersonWorkout? get lastWorkout => throw _privateConstructorUsedError;
  Goal? get lastGoal => throw _privateConstructorUsedError;
  List<Person>? get friendsActivity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {PersonWorkout? lastWorkout,
      Goal? lastGoal,
      List<Person>? friendsActivity});

  $PersonWorkoutCopyWith<$Res>? get lastWorkout;
  $GoalCopyWith<$Res>? get lastGoal;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastWorkout = freezed,
    Object? lastGoal = freezed,
    Object? friendsActivity = freezed,
  }) {
    return _then(_value.copyWith(
      lastWorkout: freezed == lastWorkout
          ? _value.lastWorkout
          : lastWorkout // ignore: cast_nullable_to_non_nullable
              as PersonWorkout?,
      lastGoal: freezed == lastGoal
          ? _value.lastGoal
          : lastGoal // ignore: cast_nullable_to_non_nullable
              as Goal?,
      friendsActivity: freezed == friendsActivity
          ? _value.friendsActivity
          : friendsActivity // ignore: cast_nullable_to_non_nullable
              as List<Person>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonWorkoutCopyWith<$Res>? get lastWorkout {
    if (_value.lastWorkout == null) {
      return null;
    }

    return $PersonWorkoutCopyWith<$Res>(_value.lastWorkout!, (value) {
      return _then(_value.copyWith(lastWorkout: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalCopyWith<$Res>? get lastGoal {
    if (_value.lastGoal == null) {
      return null;
    }

    return $GoalCopyWith<$Res>(_value.lastGoal!, (value) {
      return _then(_value.copyWith(lastGoal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageStateDataCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateDataCopyWith(
          _$HomePageStateData value, $Res Function(_$HomePageStateData) then) =
      __$$HomePageStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PersonWorkout? lastWorkout,
      Goal? lastGoal,
      List<Person>? friendsActivity});

  @override
  $PersonWorkoutCopyWith<$Res>? get lastWorkout;
  @override
  $GoalCopyWith<$Res>? get lastGoal;
}

/// @nodoc
class __$$HomePageStateDataCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateData>
    implements _$$HomePageStateDataCopyWith<$Res> {
  __$$HomePageStateDataCopyWithImpl(
      _$HomePageStateData _value, $Res Function(_$HomePageStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastWorkout = freezed,
    Object? lastGoal = freezed,
    Object? friendsActivity = freezed,
  }) {
    return _then(_$HomePageStateData(
      lastWorkout: freezed == lastWorkout
          ? _value.lastWorkout
          : lastWorkout // ignore: cast_nullable_to_non_nullable
              as PersonWorkout?,
      lastGoal: freezed == lastGoal
          ? _value.lastGoal
          : lastGoal // ignore: cast_nullable_to_non_nullable
              as Goal?,
      friendsActivity: freezed == friendsActivity
          ? _value._friendsActivity
          : friendsActivity // ignore: cast_nullable_to_non_nullable
              as List<Person>?,
    ));
  }
}

/// @nodoc

class _$HomePageStateData implements HomePageStateData {
  const _$HomePageStateData(
      {this.lastWorkout, this.lastGoal, final List<Person>? friendsActivity})
      : _friendsActivity = friendsActivity;

  @override
  final PersonWorkout? lastWorkout;
  @override
  final Goal? lastGoal;
  final List<Person>? _friendsActivity;
  @override
  List<Person>? get friendsActivity {
    final value = _friendsActivity;
    if (value == null) return null;
    if (_friendsActivity is EqualUnmodifiableListView) return _friendsActivity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomePageState(lastWorkout: $lastWorkout, lastGoal: $lastGoal, friendsActivity: $friendsActivity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateData &&
            (identical(other.lastWorkout, lastWorkout) ||
                other.lastWorkout == lastWorkout) &&
            (identical(other.lastGoal, lastGoal) ||
                other.lastGoal == lastGoal) &&
            const DeepCollectionEquality()
                .equals(other._friendsActivity, _friendsActivity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastWorkout, lastGoal,
      const DeepCollectionEquality().hash(_friendsActivity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateDataCopyWith<_$HomePageStateData> get copyWith =>
      __$$HomePageStateDataCopyWithImpl<_$HomePageStateData>(this, _$identity);
}

abstract class HomePageStateData implements HomePageState {
  const factory HomePageStateData(
      {final PersonWorkout? lastWorkout,
      final Goal? lastGoal,
      final List<Person>? friendsActivity}) = _$HomePageStateData;

  @override
  PersonWorkout? get lastWorkout;
  @override
  Goal? get lastGoal;
  @override
  List<Person>? get friendsActivity;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateDataCopyWith<_$HomePageStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
