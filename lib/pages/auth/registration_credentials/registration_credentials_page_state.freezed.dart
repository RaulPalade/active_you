// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_credentials_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationCredentialsPageState {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationCredentialsPageStateCopyWith<RegistrationCredentialsPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationCredentialsPageStateCopyWith<$Res> {
  factory $RegistrationCredentialsPageStateCopyWith(
          RegistrationCredentialsPageState value,
          $Res Function(RegistrationCredentialsPageState) then) =
      _$RegistrationCredentialsPageStateCopyWithImpl<$Res,
          RegistrationCredentialsPageState>;
  @useResult
  $Res call({String firstName, String lastName, String email, String password});
}

/// @nodoc
class _$RegistrationCredentialsPageStateCopyWithImpl<$Res,
        $Val extends RegistrationCredentialsPageState>
    implements $RegistrationCredentialsPageStateCopyWith<$Res> {
  _$RegistrationCredentialsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationCredentialsPageDataCopyWith<$Res>
    implements $RegistrationCredentialsPageStateCopyWith<$Res> {
  factory _$$RegistrationCredentialsPageDataCopyWith(
          _$RegistrationCredentialsPageData value,
          $Res Function(_$RegistrationCredentialsPageData) then) =
      __$$RegistrationCredentialsPageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName, String email, String password});
}

/// @nodoc
class __$$RegistrationCredentialsPageDataCopyWithImpl<$Res>
    extends _$RegistrationCredentialsPageStateCopyWithImpl<$Res,
        _$RegistrationCredentialsPageData>
    implements _$$RegistrationCredentialsPageDataCopyWith<$Res> {
  __$$RegistrationCredentialsPageDataCopyWithImpl(
      _$RegistrationCredentialsPageData _value,
      $Res Function(_$RegistrationCredentialsPageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegistrationCredentialsPageData(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationCredentialsPageData
    implements RegistrationCredentialsPageData {
  const _$RegistrationCredentialsPageData(
      {this.firstName = "",
      this.lastName = "",
      this.email = "",
      this.password = ""});

  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'RegistrationCredentialsPageState(firstName: $firstName, lastName: $lastName, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationCredentialsPageData &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationCredentialsPageDataCopyWith<_$RegistrationCredentialsPageData>
      get copyWith => __$$RegistrationCredentialsPageDataCopyWithImpl<
          _$RegistrationCredentialsPageData>(this, _$identity);
}

abstract class RegistrationCredentialsPageData
    implements RegistrationCredentialsPageState {
  const factory RegistrationCredentialsPageData(
      {final String firstName,
      final String lastName,
      final String email,
      final String password}) = _$RegistrationCredentialsPageData;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationCredentialsPageDataCopyWith<_$RegistrationCredentialsPageData>
      get copyWith => throw _privateConstructorUsedError;
}
