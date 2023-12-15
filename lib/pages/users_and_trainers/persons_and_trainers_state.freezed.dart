// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons_and_trainers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonsAndTrainersState {
  List<Person> get persons => throw _privateConstructorUsedError;
  List<Person> get trainers => throw _privateConstructorUsedError;
  List<Workout> get createdWorkouts => throw _privateConstructorUsedError;
  Person? get selectedPerson => throw _privateConstructorUsedError;
  dynamic get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonsAndTrainersStateCopyWith<PersonsAndTrainersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsAndTrainersStateCopyWith<$Res> {
  factory $PersonsAndTrainersStateCopyWith(PersonsAndTrainersState value,
          $Res Function(PersonsAndTrainersState) then) =
      _$PersonsAndTrainersStateCopyWithImpl<$Res, PersonsAndTrainersState>;
  @useResult
  $Res call(
      {List<Person> persons,
      List<Person> trainers,
      List<Workout> createdWorkouts,
      Person? selectedPerson,
      dynamic loading});

  $PersonCopyWith<$Res>? get selectedPerson;
}

/// @nodoc
class _$PersonsAndTrainersStateCopyWithImpl<$Res,
        $Val extends PersonsAndTrainersState>
    implements $PersonsAndTrainersStateCopyWith<$Res> {
  _$PersonsAndTrainersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persons = null,
    Object? trainers = null,
    Object? createdWorkouts = null,
    Object? selectedPerson = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      persons: null == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      trainers: null == trainers
          ? _value.trainers
          : trainers // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      createdWorkouts: null == createdWorkouts
          ? _value.createdWorkouts
          : createdWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      selectedPerson: freezed == selectedPerson
          ? _value.selectedPerson
          : selectedPerson // ignore: cast_nullable_to_non_nullable
              as Person?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get selectedPerson {
    if (_value.selectedPerson == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.selectedPerson!, (value) {
      return _then(_value.copyWith(selectedPerson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonsAndTrainersStateDataCopyWith<$Res>
    implements $PersonsAndTrainersStateCopyWith<$Res> {
  factory _$$_PersonsAndTrainersStateDataCopyWith(
          _$_PersonsAndTrainersStateData value,
          $Res Function(_$_PersonsAndTrainersStateData) then) =
      __$$_PersonsAndTrainersStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Person> persons,
      List<Person> trainers,
      List<Workout> createdWorkouts,
      Person? selectedPerson,
      dynamic loading});

  @override
  $PersonCopyWith<$Res>? get selectedPerson;
}

/// @nodoc
class __$$_PersonsAndTrainersStateDataCopyWithImpl<$Res>
    extends _$PersonsAndTrainersStateCopyWithImpl<$Res,
        _$_PersonsAndTrainersStateData>
    implements _$$_PersonsAndTrainersStateDataCopyWith<$Res> {
  __$$_PersonsAndTrainersStateDataCopyWithImpl(
      _$_PersonsAndTrainersStateData _value,
      $Res Function(_$_PersonsAndTrainersStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persons = null,
    Object? trainers = null,
    Object? createdWorkouts = null,
    Object? selectedPerson = freezed,
    Object? loading = freezed,
  }) {
    return _then(_$_PersonsAndTrainersStateData(
      persons: null == persons
          ? _value._persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      trainers: null == trainers
          ? _value._trainers
          : trainers // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      createdWorkouts: null == createdWorkouts
          ? _value._createdWorkouts
          : createdWorkouts // ignore: cast_nullable_to_non_nullable
              as List<Workout>,
      selectedPerson: freezed == selectedPerson
          ? _value.selectedPerson
          : selectedPerson // ignore: cast_nullable_to_non_nullable
              as Person?,
      loading: freezed == loading ? _value.loading! : loading,
    ));
  }
}

/// @nodoc

class _$_PersonsAndTrainersStateData implements _PersonsAndTrainersStateData {
  const _$_PersonsAndTrainersStateData(
      {final List<Person> persons = const [],
      final List<Person> trainers = const [],
      final List<Workout> createdWorkouts = const [],
      this.selectedPerson,
      this.loading = false})
      : _persons = persons,
        _trainers = trainers,
        _createdWorkouts = createdWorkouts;

  final List<Person> _persons;
  @override
  @JsonKey()
  List<Person> get persons {
    if (_persons is EqualUnmodifiableListView) return _persons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_persons);
  }

  final List<Person> _trainers;
  @override
  @JsonKey()
  List<Person> get trainers {
    if (_trainers is EqualUnmodifiableListView) return _trainers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainers);
  }

  final List<Workout> _createdWorkouts;
  @override
  @JsonKey()
  List<Workout> get createdWorkouts {
    if (_createdWorkouts is EqualUnmodifiableListView) return _createdWorkouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createdWorkouts);
  }

  @override
  final Person? selectedPerson;
  @override
  @JsonKey()
  final dynamic loading;

  @override
  String toString() {
    return 'PersonsAndTrainersState(persons: $persons, trainers: $trainers, createdWorkouts: $createdWorkouts, selectedPerson: $selectedPerson, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonsAndTrainersStateData &&
            const DeepCollectionEquality().equals(other._persons, _persons) &&
            const DeepCollectionEquality().equals(other._trainers, _trainers) &&
            const DeepCollectionEquality()
                .equals(other._createdWorkouts, _createdWorkouts) &&
            (identical(other.selectedPerson, selectedPerson) ||
                other.selectedPerson == selectedPerson) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_persons),
      const DeepCollectionEquality().hash(_trainers),
      const DeepCollectionEquality().hash(_createdWorkouts),
      selectedPerson,
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonsAndTrainersStateDataCopyWith<_$_PersonsAndTrainersStateData>
      get copyWith => __$$_PersonsAndTrainersStateDataCopyWithImpl<
          _$_PersonsAndTrainersStateData>(this, _$identity);
}

abstract class _PersonsAndTrainersStateData implements PersonsAndTrainersState {
  const factory _PersonsAndTrainersStateData(
      {final List<Person> persons,
      final List<Person> trainers,
      final List<Workout> createdWorkouts,
      final Person? selectedPerson,
      final dynamic loading}) = _$_PersonsAndTrainersStateData;

  @override
  List<Person> get persons;
  @override
  List<Person> get trainers;
  @override
  List<Workout> get createdWorkouts;
  @override
  Person? get selectedPerson;
  @override
  dynamic get loading;
  @override
  @JsonKey(ignore: true)
  _$$_PersonsAndTrainersStateDataCopyWith<_$_PersonsAndTrainersStateData>
      get copyWith => throw _privateConstructorUsedError;
}
