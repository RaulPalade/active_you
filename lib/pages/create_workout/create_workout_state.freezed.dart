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
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
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
  $Res call({String name, String type, ErrorApiCall? errorApiCall});
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
    Object? name = null,
    Object? type = null,
    Object? errorApiCall = freezed,
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
  $Res call({String name, String type, ErrorApiCall? errorApiCall});
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
    Object? name = null,
    Object? type = null,
    Object? errorApiCall = freezed,
  }) {
    return _then(_$CreateWorkoutStateData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
      {this.name = "", this.type = "", this.errorApiCall});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;
  @override
  final ErrorApiCall? errorApiCall;

  @override
  String toString() {
    return 'CreateWorkoutState(name: $name, type: $type, errorApiCall: $errorApiCall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWorkoutStateData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.errorApiCall, errorApiCall) ||
                other.errorApiCall == errorApiCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type, errorApiCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWorkoutStateDataCopyWith<_$CreateWorkoutStateData> get copyWith =>
      __$$CreateWorkoutStateDataCopyWithImpl<_$CreateWorkoutStateData>(
          this, _$identity);
}

abstract class CreateWorkoutStateData implements CreateWorkoutState {
  const factory CreateWorkoutStateData(
      {final String name,
      final String type,
      final ErrorApiCall? errorApiCall}) = _$CreateWorkoutStateData;

  @override
  String get name;
  @override
  String get type;
  @override
  ErrorApiCall? get errorApiCall;
  @override
  @JsonKey(ignore: true)
  _$$CreateWorkoutStateDataCopyWith<_$CreateWorkoutStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
