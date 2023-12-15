// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_workout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateWorkoutState {
  String get workoutName => throw _privateConstructorUsedError;
  String get workoutType => throw _privateConstructorUsedError;
  String get generatedId => throw _privateConstructorUsedError;
  String get exerciseName => throw _privateConstructorUsedError;
  int get exerciseRepetitions => throw _privateConstructorUsedError;
  int get exerciseSeries => throw _privateConstructorUsedError;
  ErrorApiCall? get errorApiCall => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateWorkoutStateCopyWith<CreateWorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWorkoutStateCopyWith<$Res> {
  factory $CreateWorkoutStateCopyWith(
          CreateWorkoutState value, $Res Function(CreateWorkoutState) then) =
      _$CreateWorkoutStateCopyWithImpl<$Res, CreateWorkoutState>;
  @useResult
  $Res call(
      {String workoutName,
      String workoutType,
      String generatedId,
      String exerciseName,
      int exerciseRepetitions,
      int exerciseSeries,
      ErrorApiCall? errorApiCall});
}

/// @nodoc
class _$CreateWorkoutStateCopyWithImpl<$Res, $Val extends CreateWorkoutState>
    implements $CreateWorkoutStateCopyWith<$Res> {
  _$CreateWorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutName = null,
    Object? workoutType = null,
    Object? generatedId = null,
    Object? exerciseName = null,
    Object? exerciseRepetitions = null,
    Object? exerciseSeries = null,
    Object? errorApiCall = freezed,
  }) {
    return _then(_value.copyWith(
      workoutName: null == workoutName
          ? _value.workoutName
          : workoutName // ignore: cast_nullable_to_non_nullable
              as String,
      workoutType: null == workoutType
          ? _value.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as String,
      generatedId: null == generatedId
          ? _value.generatedId
          : generatedId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseName: null == exerciseName
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseRepetitions: null == exerciseRepetitions
          ? _value.exerciseRepetitions
          : exerciseRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseSeries: null == exerciseSeries
          ? _value.exerciseSeries
          : exerciseSeries // ignore: cast_nullable_to_non_nullable
              as int,
      errorApiCall: freezed == errorApiCall
          ? _value.errorApiCall
          : errorApiCall // ignore: cast_nullable_to_non_nullable
              as ErrorApiCall?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWorkoutStateDataCopyWith<$Res>
    implements $CreateWorkoutStateCopyWith<$Res> {
  factory _$$CreateWorkoutStateDataCopyWith(_$CreateWorkoutStateData value,
          $Res Function(_$CreateWorkoutStateData) then) =
      __$$CreateWorkoutStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String workoutName,
      String workoutType,
      String generatedId,
      String exerciseName,
      int exerciseRepetitions,
      int exerciseSeries,
      ErrorApiCall? errorApiCall});
}

/// @nodoc
class __$$CreateWorkoutStateDataCopyWithImpl<$Res>
    extends _$CreateWorkoutStateCopyWithImpl<$Res, _$CreateWorkoutStateData>
    implements _$$CreateWorkoutStateDataCopyWith<$Res> {
  __$$CreateWorkoutStateDataCopyWithImpl(_$CreateWorkoutStateData _value,
      $Res Function(_$CreateWorkoutStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutName = null,
    Object? workoutType = null,
    Object? generatedId = null,
    Object? exerciseName = null,
    Object? exerciseRepetitions = null,
    Object? exerciseSeries = null,
    Object? errorApiCall = freezed,
  }) {
    return _then(_$CreateWorkoutStateData(
      workoutName: null == workoutName
          ? _value.workoutName
          : workoutName // ignore: cast_nullable_to_non_nullable
              as String,
      workoutType: null == workoutType
          ? _value.workoutType
          : workoutType // ignore: cast_nullable_to_non_nullable
              as String,
      generatedId: null == generatedId
          ? _value.generatedId
          : generatedId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseName: null == exerciseName
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseRepetitions: null == exerciseRepetitions
          ? _value.exerciseRepetitions
          : exerciseRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseSeries: null == exerciseSeries
          ? _value.exerciseSeries
          : exerciseSeries // ignore: cast_nullable_to_non_nullable
              as int,
      errorApiCall: freezed == errorApiCall
          ? _value.errorApiCall
          : errorApiCall // ignore: cast_nullable_to_non_nullable
              as ErrorApiCall?,
    ));
  }
}

/// @nodoc

class _$CreateWorkoutStateData implements CreateWorkoutStateData {
  const _$CreateWorkoutStateData(
      {this.workoutName = "",
      this.workoutType = "",
      this.generatedId = "",
      this.exerciseName = "",
      this.exerciseRepetitions = 0,
      this.exerciseSeries = 0,
      this.errorApiCall});

  @override
  @JsonKey()
  final String workoutName;
  @override
  @JsonKey()
  final String workoutType;
  @override
  @JsonKey()
  final String generatedId;
  @override
  @JsonKey()
  final String exerciseName;
  @override
  @JsonKey()
  final int exerciseRepetitions;
  @override
  @JsonKey()
  final int exerciseSeries;
  @override
  final ErrorApiCall? errorApiCall;

  @override
  String toString() {
    return 'CreateWorkoutState(workoutName: $workoutName, workoutType: $workoutType, generatedId: $generatedId, exerciseName: $exerciseName, exerciseRepetitions: $exerciseRepetitions, exerciseSeries: $exerciseSeries, errorApiCall: $errorApiCall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWorkoutStateData &&
            (identical(other.workoutName, workoutName) ||
                other.workoutName == workoutName) &&
            (identical(other.workoutType, workoutType) ||
                other.workoutType == workoutType) &&
            (identical(other.generatedId, generatedId) ||
                other.generatedId == generatedId) &&
            (identical(other.exerciseName, exerciseName) ||
                other.exerciseName == exerciseName) &&
            (identical(other.exerciseRepetitions, exerciseRepetitions) ||
                other.exerciseRepetitions == exerciseRepetitions) &&
            (identical(other.exerciseSeries, exerciseSeries) ||
                other.exerciseSeries == exerciseSeries) &&
            (identical(other.errorApiCall, errorApiCall) ||
                other.errorApiCall == errorApiCall));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      workoutName,
      workoutType,
      generatedId,
      exerciseName,
      exerciseRepetitions,
      exerciseSeries,
      errorApiCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWorkoutStateDataCopyWith<_$CreateWorkoutStateData> get copyWith =>
      __$$CreateWorkoutStateDataCopyWithImpl<_$CreateWorkoutStateData>(
          this, _$identity);
}

abstract class CreateWorkoutStateData implements CreateWorkoutState {
  const factory CreateWorkoutStateData(
      {final String workoutName,
      final String workoutType,
      final String generatedId,
      final String exerciseName,
      final int exerciseRepetitions,
      final int exerciseSeries,
      final ErrorApiCall? errorApiCall}) = _$CreateWorkoutStateData;

  @override
  String get workoutName;
  @override
  String get workoutType;
  @override
  String get generatedId;
  @override
  String get exerciseName;
  @override
  int get exerciseRepetitions;
  @override
  int get exerciseSeries;
  @override
  ErrorApiCall? get errorApiCall;
  @override
  @JsonKey(ignore: true)
  _$$CreateWorkoutStateDataCopyWith<_$CreateWorkoutStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
