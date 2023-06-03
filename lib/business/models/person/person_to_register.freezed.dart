// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_to_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonToRegister _$PersonToRegisterFromJson(Map<String, dynamic> json) {
  return _PersonToRegister.fromJson(json);
}

/// @nodoc
mixin _$PersonToRegister {
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonToRegisterCopyWith<PersonToRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonToRegisterCopyWith<$Res> {
  factory $PersonToRegisterCopyWith(
          PersonToRegister value, $Res Function(PersonToRegister) then) =
      _$PersonToRegisterCopyWithImpl<$Res, PersonToRegister>;
  @useResult
  $Res call({String? name, String? surname, String? email, String? password});
}

/// @nodoc
class _$PersonToRegisterCopyWithImpl<$Res, $Val extends PersonToRegister>
    implements $PersonToRegisterCopyWith<$Res> {
  _$PersonToRegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonToRegisterCopyWith<$Res>
    implements $PersonToRegisterCopyWith<$Res> {
  factory _$$_PersonToRegisterCopyWith(
          _$_PersonToRegister value, $Res Function(_$_PersonToRegister) then) =
      __$$_PersonToRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? surname, String? email, String? password});
}

/// @nodoc
class __$$_PersonToRegisterCopyWithImpl<$Res>
    extends _$PersonToRegisterCopyWithImpl<$Res, _$_PersonToRegister>
    implements _$$_PersonToRegisterCopyWith<$Res> {
  __$$_PersonToRegisterCopyWithImpl(
      _$_PersonToRegister _value, $Res Function(_$_PersonToRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_PersonToRegister(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonToRegister implements _PersonToRegister {
  const _$_PersonToRegister(
      {required this.name,
      required this.surname,
      required this.email,
      required this.password});

  factory _$_PersonToRegister.fromJson(Map<String, dynamic> json) =>
      _$$_PersonToRegisterFromJson(json);

  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'PersonToRegister(name: $name, surname: $surname, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonToRegister &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, surname, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonToRegisterCopyWith<_$_PersonToRegister> get copyWith =>
      __$$_PersonToRegisterCopyWithImpl<_$_PersonToRegister>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonToRegisterToJson(
      this,
    );
  }
}

abstract class _PersonToRegister implements PersonToRegister {
  const factory _PersonToRegister(
      {required final String? name,
      required final String? surname,
      required final String? email,
      required final String? password}) = _$_PersonToRegister;

  factory _PersonToRegister.fromJson(Map<String, dynamic> json) =
      _$_PersonToRegister.fromJson;

  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_PersonToRegisterCopyWith<_$_PersonToRegister> get copyWith =>
      throw _privateConstructorUsedError;
}
