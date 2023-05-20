// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get sex => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  List<Workout> get myWorkouts => throw _privateConstructorUsedError;
  List<Goal> get myGoals => throw _privateConstructorUsedError;
  List<Person> get following => throw _privateConstructorUsedError;
  List<Person> get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? surname,
      String? email,
      String? password,
      String? sex,
      String? role,
      List<Workout> myWorkouts,
      List<Goal> myGoals,
      List<Person> following,
      List<Person> followers});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? sex = freezed,
    Object? role = freezed,
    Object? myWorkouts = null,
    Object? myGoals = null,
    Object? following = null,
    Object? followers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      myWorkouts: null == myWorkouts
          ? _value.myWorkouts
          : myWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      myGoals: null == myGoals
          ? _value.myGoals
          : myGoals // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$_PersonCopyWith(_$_Person value, $Res Function(_$_Person) then) =
      __$$_PersonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? surname,
      String? email,
      String? password,
      String? sex,
      String? role,
      List<Workout> myWorkouts,
      List<Goal> myGoals,
      List<Person> following,
      List<Person> followers});
}

/// @nodoc
class __$$_PersonCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$_Person>
    implements _$$_PersonCopyWith<$Res> {
  __$$_PersonCopyWithImpl(_$_Person _value, $Res Function(_$_Person) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? sex = freezed,
    Object? role = freezed,
    Object? myWorkouts = null,
    Object? myGoals = null,
    Object? following = null,
    Object? followers = null,
  }) {
    return _then(_$_Person(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      myWorkouts: null == myWorkouts
          ? _value._myWorkouts
          : myWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      myGoals: null == myGoals
          ? _value._myGoals
          : myGoals // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Person implements _Person {
  const _$_Person(
      {required this.id,
      required this.name,
      required this.surname,
      required this.email,
      required this.password,
      required this.sex,
      required this.role,
      required final List<Workout> myWorkouts,
      required final List<Goal> myGoals,
      required final List<Person> following,
      required final List<Person> followers})
      : _myWorkouts = myWorkouts,
        _myGoals = myGoals,
        _following = following,
        _followers = followers;

  factory _$_Person.fromJson(Map<String, dynamic> json) =>
      _$$_PersonFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? sex;
  @override
  final String? role;
  final List<Workout> _myWorkouts;
  @override
  List<Workout> get myWorkouts {
    if (_myWorkouts is EqualUnmodifiableListView) return _myWorkouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myWorkouts);
  }

  final List<Goal> _myGoals;
  @override
  List<Goal> get myGoals {
    if (_myGoals is EqualUnmodifiableListView) return _myGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myGoals);
  }

  final List<Person> _following;
  @override
  List<Person> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<Person> _followers;
  @override
  List<Person> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  @override
  String toString() {
    return 'Person(id: $id, name: $name, surname: $surname, email: $email, password: $password, sex: $sex, role: $role, myWorkouts: $myWorkouts, myGoals: $myGoals, following: $following, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Person &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._myWorkouts, _myWorkouts) &&
            const DeepCollectionEquality().equals(other._myGoals, _myGoals) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      surname,
      email,
      password,
      sex,
      role,
      const DeepCollectionEquality().hash(_myWorkouts),
      const DeepCollectionEquality().hash(_myGoals),
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_followers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      __$$_PersonCopyWithImpl<_$_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonToJson(
      this,
    );
  }
}

abstract class _Person implements Person {
  const factory _Person(
      {required final int id,
      required final String? name,
      required final String? surname,
      required final String? email,
      required final String? password,
      required final String? sex,
      required final String? role,
      required final List<Workout> myWorkouts,
      required final List<Goal> myGoals,
      required final List<Person> following,
      required final List<Person> followers}) = _$_Person;

  factory _Person.fromJson(Map<String, dynamic> json) = _$_Person.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get sex;
  @override
  String? get role;
  @override
  List<Workout> get myWorkouts;
  @override
  List<Goal> get myGoals;
  @override
  List<Person> get following;
  @override
  List<Person> get followers;
  @override
  @JsonKey(ignore: true)
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      throw _privateConstructorUsedError;
}
