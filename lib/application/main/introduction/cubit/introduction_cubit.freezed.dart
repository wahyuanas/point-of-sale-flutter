// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'introduction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntroductionState _$IntroductionStateFromJson(Map<String, dynamic> json) {
  return _IntroductionState.fromJson(json);
}

/// @nodoc
class _$IntroductionStateTearOff {
  const _$IntroductionStateTearOff();

  _IntroductionState call({required OnIntroductionState introductionState}) {
    return _IntroductionState(
      introductionState: introductionState,
    );
  }

  IntroductionState fromJson(Map<String, Object?> json) {
    return IntroductionState.fromJson(json);
  }
}

/// @nodoc
const $IntroductionState = _$IntroductionStateTearOff();

/// @nodoc
mixin _$IntroductionState {
  OnIntroductionState get introductionState =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntroductionStateCopyWith<IntroductionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionStateCopyWith<$Res> {
  factory $IntroductionStateCopyWith(
          IntroductionState value, $Res Function(IntroductionState) then) =
      _$IntroductionStateCopyWithImpl<$Res>;
  $Res call({OnIntroductionState introductionState});

  $OnIntroductionStateCopyWith<$Res> get introductionState;
}

/// @nodoc
class _$IntroductionStateCopyWithImpl<$Res>
    implements $IntroductionStateCopyWith<$Res> {
  _$IntroductionStateCopyWithImpl(this._value, this._then);

  final IntroductionState _value;
  // ignore: unused_field
  final $Res Function(IntroductionState) _then;

  @override
  $Res call({
    Object? introductionState = freezed,
  }) {
    return _then(_value.copyWith(
      introductionState: introductionState == freezed
          ? _value.introductionState
          : introductionState // ignore: cast_nullable_to_non_nullable
              as OnIntroductionState,
    ));
  }

  @override
  $OnIntroductionStateCopyWith<$Res> get introductionState {
    return $OnIntroductionStateCopyWith<$Res>(_value.introductionState,
        (value) {
      return _then(_value.copyWith(introductionState: value));
    });
  }
}

/// @nodoc
abstract class _$IntroductionStateCopyWith<$Res>
    implements $IntroductionStateCopyWith<$Res> {
  factory _$IntroductionStateCopyWith(
          _IntroductionState value, $Res Function(_IntroductionState) then) =
      __$IntroductionStateCopyWithImpl<$Res>;
  @override
  $Res call({OnIntroductionState introductionState});

  @override
  $OnIntroductionStateCopyWith<$Res> get introductionState;
}

/// @nodoc
class __$IntroductionStateCopyWithImpl<$Res>
    extends _$IntroductionStateCopyWithImpl<$Res>
    implements _$IntroductionStateCopyWith<$Res> {
  __$IntroductionStateCopyWithImpl(
      _IntroductionState _value, $Res Function(_IntroductionState) _then)
      : super(_value, (v) => _then(v as _IntroductionState));

  @override
  _IntroductionState get _value => super._value as _IntroductionState;

  @override
  $Res call({
    Object? introductionState = freezed,
  }) {
    return _then(_IntroductionState(
      introductionState: introductionState == freezed
          ? _value.introductionState
          : introductionState // ignore: cast_nullable_to_non_nullable
              as OnIntroductionState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntroductionState
    with DiagnosticableTreeMixin
    implements _IntroductionState {
  const _$_IntroductionState({required this.introductionState});

  factory _$_IntroductionState.fromJson(Map<String, dynamic> json) =>
      _$$_IntroductionStateFromJson(json);

  @override
  final OnIntroductionState introductionState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntroductionState(introductionState: $introductionState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntroductionState'))
      ..add(DiagnosticsProperty('introductionState', introductionState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntroductionState &&
            const DeepCollectionEquality()
                .equals(other.introductionState, introductionState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(introductionState));

  @JsonKey(ignore: true)
  @override
  _$IntroductionStateCopyWith<_IntroductionState> get copyWith =>
      __$IntroductionStateCopyWithImpl<_IntroductionState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntroductionStateToJson(this);
  }
}

abstract class _IntroductionState implements IntroductionState {
  const factory _IntroductionState(
      {required OnIntroductionState introductionState}) = _$_IntroductionState;

  factory _IntroductionState.fromJson(Map<String, dynamic> json) =
      _$_IntroductionState.fromJson;

  @override
  OnIntroductionState get introductionState;
  @override
  @JsonKey(ignore: true)
  _$IntroductionStateCopyWith<_IntroductionState> get copyWith =>
      throw _privateConstructorUsedError;
}
