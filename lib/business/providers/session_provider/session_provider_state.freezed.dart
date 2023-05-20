// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionProviderState {
  Person? get currentPerson => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  ErrorApiCall? get errorApiCall => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionProviderStateCopyWith<SessionProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionProviderStateCopyWith<$Res> {
  factory $SessionProviderStateCopyWith(SessionProviderState value,
          $Res Function(SessionProviderState) then) =
      _$SessionProviderStateCopyWithImpl<$Res, SessionProviderState>;
  @useResult
  $Res call({Person? currentPerson, bool loading, ErrorApiCall? errorApiCall});

  $PersonCopyWith<$Res>? get currentPerson;
}

/// @nodoc
class _$SessionProviderStateCopyWithImpl<$Res,
        $Val extends SessionProviderState>
    implements $SessionProviderStateCopyWith<$Res> {
  _$SessionProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPerson = freezed,
    Object? loading = null,
    Object? errorApiCall = freezed,
  }) {
    return _then(_value.copyWith(
      currentPerson: freezed == currentPerson
          ? _value.currentPerson
          : currentPerson // ignore: cast_nullable_to_non_nullable
              as Person?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorApiCall: freezed == errorApiCall
          ? _value.errorApiCall
          : errorApiCall // ignore: cast_nullable_to_non_nullable
              as ErrorApiCall?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get currentPerson {
    if (_value.currentPerson == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.currentPerson!, (value) {
      return _then(_value.copyWith(currentPerson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionProviderStateDataCopyWith<$Res>
    implements $SessionProviderStateCopyWith<$Res> {
  factory _$$SessionProviderStateDataCopyWith(_$SessionProviderStateData value,
          $Res Function(_$SessionProviderStateData) then) =
      __$$SessionProviderStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Person? currentPerson, bool loading, ErrorApiCall? errorApiCall});

  @override
  $PersonCopyWith<$Res>? get currentPerson;
}

/// @nodoc
class __$$SessionProviderStateDataCopyWithImpl<$Res>
    extends _$SessionProviderStateCopyWithImpl<$Res, _$SessionProviderStateData>
    implements _$$SessionProviderStateDataCopyWith<$Res> {
  __$$SessionProviderStateDataCopyWithImpl(_$SessionProviderStateData _value,
      $Res Function(_$SessionProviderStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPerson = freezed,
    Object? loading = null,
    Object? errorApiCall = freezed,
  }) {
    return _then(_$SessionProviderStateData(
      currentPerson: freezed == currentPerson
          ? _value.currentPerson
          : currentPerson // ignore: cast_nullable_to_non_nullable
              as Person?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorApiCall: freezed == errorApiCall
          ? _value.errorApiCall
          : errorApiCall // ignore: cast_nullable_to_non_nullable
              as ErrorApiCall?,
    ));
  }
}

/// @nodoc

class _$SessionProviderStateData implements SessionProviderStateData {
  const _$SessionProviderStateData(
      {this.currentPerson, this.loading = false, this.errorApiCall});

  @override
  final Person? currentPerson;
  @override
  @JsonKey()
  final bool loading;
  @override
  final ErrorApiCall? errorApiCall;

  @override
  String toString() {
    return 'SessionProviderState(currentPerson: $currentPerson, loading: $loading, errorApiCall: $errorApiCall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionProviderStateData &&
            (identical(other.currentPerson, currentPerson) ||
                other.currentPerson == currentPerson) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorApiCall, errorApiCall) ||
                other.errorApiCall == errorApiCall));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPerson, loading, errorApiCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionProviderStateDataCopyWith<_$SessionProviderStateData>
      get copyWith =>
          __$$SessionProviderStateDataCopyWithImpl<_$SessionProviderStateData>(
              this, _$identity);
}

abstract class SessionProviderStateData implements SessionProviderState {
  const factory SessionProviderStateData(
      {final Person? currentPerson,
      final bool loading,
      final ErrorApiCall? errorApiCall}) = _$SessionProviderStateData;

  @override
  Person? get currentPerson;
  @override
  bool get loading;
  @override
  ErrorApiCall? get errorApiCall;
  @override
  @JsonKey(ignore: true)
  _$$SessionProviderStateDataCopyWith<_$SessionProviderStateData>
      get copyWith => throw _privateConstructorUsedError;
}
