// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonRole _$PersonRoleFromJson(Map<String, dynamic> json) {
  return _PersonRole.fromJson(json);
}

/// @nodoc
mixin _$PersonRole {
  Person get person => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonRoleCopyWith<PersonRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonRoleCopyWith<$Res> {
  factory $PersonRoleCopyWith(
          PersonRole value, $Res Function(PersonRole) then) =
      _$PersonRoleCopyWithImpl<$Res, PersonRole>;
  @useResult
  $Res call({Person person, Role role});

  $PersonCopyWith<$Res> get person;
  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class _$PersonRoleCopyWithImpl<$Res, $Val extends PersonRole>
    implements $PersonRoleCopyWith<$Res> {
  _$PersonRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonRoleCopyWith<$Res>
    implements $PersonRoleCopyWith<$Res> {
  factory _$$_PersonRoleCopyWith(
          _$_PersonRole value, $Res Function(_$_PersonRole) then) =
      __$$_PersonRoleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Person person, Role role});

  @override
  $PersonCopyWith<$Res> get person;
  @override
  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$_PersonRoleCopyWithImpl<$Res>
    extends _$PersonRoleCopyWithImpl<$Res, _$_PersonRole>
    implements _$$_PersonRoleCopyWith<$Res> {
  __$$_PersonRoleCopyWithImpl(
      _$_PersonRole _value, $Res Function(_$_PersonRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
    Object? role = null,
  }) {
    return _then(_$_PersonRole(
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonRole implements _PersonRole {
  const _$_PersonRole({required this.person, required this.role});

  factory _$_PersonRole.fromJson(Map<String, dynamic> json) =>
      _$$_PersonRoleFromJson(json);

  @override
  final Person person;
  @override
  final Role role;

  @override
  String toString() {
    return 'PersonRole(person: $person, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonRole &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, person, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonRoleCopyWith<_$_PersonRole> get copyWith =>
      __$$_PersonRoleCopyWithImpl<_$_PersonRole>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonRoleToJson(
      this,
    );
  }
}

abstract class _PersonRole implements PersonRole {
  const factory _PersonRole(
      {required final Person person, required final Role role}) = _$_PersonRole;

  factory _PersonRole.fromJson(Map<String, dynamic> json) =
      _$_PersonRole.fromJson;

  @override
  Person get person;
  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$_PersonRoleCopyWith<_$_PersonRole> get copyWith =>
      throw _privateConstructorUsedError;
}
