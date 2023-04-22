// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashPageState {
  bool get loading => throw _privateConstructorUsedError;
  bool get endInit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashPageStateCopyWith<SplashPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashPageStateCopyWith<$Res> {
  factory $SplashPageStateCopyWith(
          SplashPageState value, $Res Function(SplashPageState) then) =
      _$SplashPageStateCopyWithImpl<$Res, SplashPageState>;
  @useResult
  $Res call({bool loading, bool endInit});
}

/// @nodoc
class _$SplashPageStateCopyWithImpl<$Res, $Val extends SplashPageState>
    implements $SplashPageStateCopyWith<$Res> {
  _$SplashPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? endInit = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      endInit: null == endInit
          ? _value.endInit
          : endInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashPageDataCopyWith<$Res>
    implements $SplashPageStateCopyWith<$Res> {
  factory _$$SplashPageDataCopyWith(
          _$SplashPageData value, $Res Function(_$SplashPageData) then) =
      __$$SplashPageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool endInit});
}

/// @nodoc
class __$$SplashPageDataCopyWithImpl<$Res>
    extends _$SplashPageStateCopyWithImpl<$Res, _$SplashPageData>
    implements _$$SplashPageDataCopyWith<$Res> {
  __$$SplashPageDataCopyWithImpl(
      _$SplashPageData _value, $Res Function(_$SplashPageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? endInit = null,
  }) {
    return _then(_$SplashPageData(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      endInit: null == endInit
          ? _value.endInit
          : endInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SplashPageData implements SplashPageData {
  const _$SplashPageData({this.loading = false, this.endInit = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool endInit;

  @override
  String toString() {
    return 'SplashPageState(loading: $loading, endInit: $endInit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashPageData &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.endInit, endInit) || other.endInit == endInit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, endInit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashPageDataCopyWith<_$SplashPageData> get copyWith =>
      __$$SplashPageDataCopyWithImpl<_$SplashPageData>(this, _$identity);
}

abstract class SplashPageData implements SplashPageState {
  const factory SplashPageData({final bool loading, final bool endInit}) =
      _$SplashPageData;

  @override
  bool get loading;
  @override
  bool get endInit;
  @override
  @JsonKey(ignore: true)
  _$$SplashPageDataCopyWith<_$SplashPageData> get copyWith =>
      throw _privateConstructorUsedError;
}
