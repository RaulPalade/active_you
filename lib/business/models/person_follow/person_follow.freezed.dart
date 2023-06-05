// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_follow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonFollow _$PersonFollowFromJson(Map<String, dynamic> json) {
  return _PersonFollow.fromJson(json);
}

/// @nodoc
mixin _$PersonFollow {
  int? get from => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonFollowCopyWith<PersonFollow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonFollowCopyWith<$Res> {
  factory $PersonFollowCopyWith(
          PersonFollow value, $Res Function(PersonFollow) then) =
      _$PersonFollowCopyWithImpl<$Res, PersonFollow>;
  @useResult
  $Res call({int? from, int? to});
}

/// @nodoc
class _$PersonFollowCopyWithImpl<$Res, $Val extends PersonFollow>
    implements $PersonFollowCopyWith<$Res> {
  _$PersonFollowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonFollowCopyWith<$Res>
    implements $PersonFollowCopyWith<$Res> {
  factory _$$_PersonFollowCopyWith(
          _$_PersonFollow value, $Res Function(_$_PersonFollow) then) =
      __$$_PersonFollowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? from, int? to});
}

/// @nodoc
class __$$_PersonFollowCopyWithImpl<$Res>
    extends _$PersonFollowCopyWithImpl<$Res, _$_PersonFollow>
    implements _$$_PersonFollowCopyWith<$Res> {
  __$$_PersonFollowCopyWithImpl(
      _$_PersonFollow _value, $Res Function(_$_PersonFollow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_PersonFollow(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonFollow implements _PersonFollow {
  const _$_PersonFollow({required this.from, required this.to});

  factory _$_PersonFollow.fromJson(Map<String, dynamic> json) =>
      _$$_PersonFollowFromJson(json);

  @override
  final int? from;
  @override
  final int? to;

  @override
  String toString() {
    return 'PersonFollow(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonFollow &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonFollowCopyWith<_$_PersonFollow> get copyWith =>
      __$$_PersonFollowCopyWithImpl<_$_PersonFollow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonFollowToJson(
      this,
    );
  }
}

abstract class _PersonFollow implements PersonFollow {
  const factory _PersonFollow(
      {required final int? from, required final int? to}) = _$_PersonFollow;

  factory _PersonFollow.fromJson(Map<String, dynamic> json) =
      _$_PersonFollow.fromJson;

  @override
  int? get from;
  @override
  int? get to;
  @override
  @JsonKey(ignore: true)
  _$$_PersonFollowCopyWith<_$_PersonFollow> get copyWith =>
      throw _privateConstructorUsedError;
}
