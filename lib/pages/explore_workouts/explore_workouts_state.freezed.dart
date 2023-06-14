// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_workouts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExploreWorkoutsState {
  List<Workout> get workouts => throw _privateConstructorUsedError;
  Person? get workoutAuthor => throw _privateConstructorUsedError;
  dynamic get loading => throw _privateConstructorUsedError;
  ErrorApiCall? get errorApiCall => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExploreWorkoutsStateCopyWith<ExploreWorkoutsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreWorkoutsStateCopyWith<$Res> {
  factory $ExploreWorkoutsStateCopyWith(ExploreWorkoutsState value,
          $Res Function(ExploreWorkoutsState) then) =
      _$ExploreWorkoutsStateCopyWithImpl<$Res, ExploreWorkoutsState>;
  @useResult
  $Res call(
      {List<Workout> workouts,
      Person? workoutAuthor,
      dynamic loading,
      ErrorApiCall? errorApiCall});

  $PersonCopyWith<$Res>? get workoutAuthor;
}

/// @nodoc
class _$ExploreWorkoutsStateCopyWithImpl<$Res,
        $Val extends ExploreWorkoutsState>
    implements $ExploreWorkoutsStateCopyWith<$Res> {
  _$ExploreWorkoutsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
    Object? workoutAuthor = freezed,
    Object? loading = freezed,
    Object? errorApiCall = freezed,
  }) {
    return _then(_value.copyWith(
      workouts: null == workouts
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      workoutAuthor: freezed == workoutAuthor
          ? _value.workoutAuthor
          : workoutAuthor // ignore: cast_nullable_to_non_nullable
              as Person?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorApiCall: freezed == errorApiCall
          ? _value.errorApiCall
          : errorApiCall // ignore: cast_nullable_to_non_nullable
              as ErrorApiCall?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get workoutAuthor {
    if (_value.workoutAuthor == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.workoutAuthor!, (value) {
      return _then(_value.copyWith(workoutAuthor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExploreWorkoutsStateDataCopyWith<$Res>
    implements $ExploreWorkoutsStateCopyWith<$Res> {
  factory _$$_ExploreWorkoutsStateDataCopyWith(
          _$_ExploreWorkoutsStateData value,
          $Res Function(_$_ExploreWorkoutsStateData) then) =
      __$$_ExploreWorkoutsStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Workout> workouts,
      Person? workoutAuthor,
      dynamic loading,
      ErrorApiCall? errorApiCall});

  @override
  $PersonCopyWith<$Res>? get workoutAuthor;
}

/// @nodoc
class __$$_ExploreWorkoutsStateDataCopyWithImpl<$Res>
    extends _$ExploreWorkoutsStateCopyWithImpl<$Res,
        _$_ExploreWorkoutsStateData>
    implements _$$_ExploreWorkoutsStateDataCopyWith<$Res> {
  __$$_ExploreWorkoutsStateDataCopyWithImpl(_$_ExploreWorkoutsStateData _value,
      $Res Function(_$_ExploreWorkoutsStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workouts = null,
    Object? workoutAuthor = freezed,
    Object? loading = freezed,
    Object? errorApiCall = freezed,
  }) {
    return _then(_$_ExploreWorkoutsStateData(
      workouts: null == workouts
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      workoutAuthor: freezed == workoutAuthor
          ? _value.workoutAuthor
          : workoutAuthor // ignore: cast_nullable_to_non_nullable
              as Person?,
      loading: freezed == loading ? _value.loading! : loading,
      errorApiCall: freezed == errorApiCall
          ? _value.errorApiCall
          : errorApiCall // ignore: cast_nullable_to_non_nullable
              as ErrorApiCall?,
    ));
  }
}

/// @nodoc

class _$_ExploreWorkoutsStateData implements _ExploreWorkoutsStateData {
  const _$_ExploreWorkoutsStateData(
      {final List<Workout> workouts = const [],
      this.workoutAuthor,
      this.loading = false,
      this.errorApiCall})
      : _workouts = workouts;

  final List<Workout> _workouts;
  @override
  @JsonKey()
  List<Workout> get workouts {
    if (_workouts is EqualUnmodifiableListView) return _workouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  @override
  final Person? workoutAuthor;
  @override
  @JsonKey()
  final dynamic loading;
  @override
  final ErrorApiCall? errorApiCall;

  @override
  String toString() {
    return 'ExploreWorkoutsState(workouts: $workouts, workoutAuthor: $workoutAuthor, loading: $loading, errorApiCall: $errorApiCall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExploreWorkoutsStateData &&
            const DeepCollectionEquality().equals(other._workouts, _workouts) &&
            (identical(other.workoutAuthor, workoutAuthor) ||
                other.workoutAuthor == workoutAuthor) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            (identical(other.errorApiCall, errorApiCall) ||
                other.errorApiCall == errorApiCall));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_workouts),
      workoutAuthor,
      const DeepCollectionEquality().hash(loading),
      errorApiCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExploreWorkoutsStateDataCopyWith<_$_ExploreWorkoutsStateData>
      get copyWith => __$$_ExploreWorkoutsStateDataCopyWithImpl<
          _$_ExploreWorkoutsStateData>(this, _$identity);
}

abstract class _ExploreWorkoutsStateData implements ExploreWorkoutsState {
  const factory _ExploreWorkoutsStateData(
      {final List<Workout> workouts,
      final Person? workoutAuthor,
      final dynamic loading,
      final ErrorApiCall? errorApiCall}) = _$_ExploreWorkoutsStateData;

  @override
  List<Workout> get workouts;
  @override
  Person? get workoutAuthor;
  @override
  dynamic get loading;
  @override
  ErrorApiCall? get errorApiCall;
  @override
  @JsonKey(ignore: true)
  _$$_ExploreWorkoutsStateDataCopyWith<_$_ExploreWorkoutsStateData>
      get copyWith => throw _privateConstructorUsedError;
}
