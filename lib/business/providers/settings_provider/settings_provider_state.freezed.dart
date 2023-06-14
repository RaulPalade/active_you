// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsProviderState {
  bool get tutorialCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsProviderStateCopyWith<SettingsProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsProviderStateCopyWith<$Res> {
  factory $SettingsProviderStateCopyWith(SettingsProviderState value,
          $Res Function(SettingsProviderState) then) =
      _$SettingsProviderStateCopyWithImpl<$Res, SettingsProviderState>;
  @useResult
  $Res call({bool tutorialCompleted});
}

/// @nodoc
class _$SettingsProviderStateCopyWithImpl<$Res,
        $Val extends SettingsProviderState>
    implements $SettingsProviderStateCopyWith<$Res> {
  _$SettingsProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialCompleted = null,
  }) {
    return _then(_value.copyWith(
      tutorialCompleted: null == tutorialCompleted
          ? _value.tutorialCompleted
          : tutorialCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsProviderDataCopyWith<$Res>
    implements $SettingsProviderStateCopyWith<$Res> {
  factory _$$SettingsProviderDataCopyWith(_$SettingsProviderData value,
          $Res Function(_$SettingsProviderData) then) =
      __$$SettingsProviderDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool tutorialCompleted});
}

/// @nodoc
class __$$SettingsProviderDataCopyWithImpl<$Res>
    extends _$SettingsProviderStateCopyWithImpl<$Res, _$SettingsProviderData>
    implements _$$SettingsProviderDataCopyWith<$Res> {
  __$$SettingsProviderDataCopyWithImpl(_$SettingsProviderData _value,
      $Res Function(_$SettingsProviderData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialCompleted = null,
  }) {
    return _then(_$SettingsProviderData(
      tutorialCompleted: null == tutorialCompleted
          ? _value.tutorialCompleted
          : tutorialCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsProviderData implements SettingsProviderData {
  const _$SettingsProviderData({this.tutorialCompleted = false});

  @override
  @JsonKey()
  final bool tutorialCompleted;

  @override
  String toString() {
    return 'SettingsProviderState(tutorialCompleted: $tutorialCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsProviderData &&
            (identical(other.tutorialCompleted, tutorialCompleted) ||
                other.tutorialCompleted == tutorialCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tutorialCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsProviderDataCopyWith<_$SettingsProviderData> get copyWith =>
      __$$SettingsProviderDataCopyWithImpl<_$SettingsProviderData>(
          this, _$identity);
}

abstract class SettingsProviderData implements SettingsProviderState {
  const factory SettingsProviderData({final bool tutorialCompleted}) =
      _$SettingsProviderData;

  @override
  bool get tutorialCompleted;
  @override
  @JsonKey(ignore: true)
  _$$SettingsProviderDataCopyWith<_$SettingsProviderData> get copyWith =>
      throw _privateConstructorUsedError;
}
