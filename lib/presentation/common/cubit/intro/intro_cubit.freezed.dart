// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'intro_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntroState _$IntroStateFromJson(Map<String, dynamic> json) {
  return _IntroState.fromJson(json);
}

/// @nodoc
mixin _$IntroState {
  bool get posCatalogList => throw _privateConstructorUsedError;
  bool get posCustomerList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntroStateCopyWith<IntroState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroStateCopyWith<$Res> {
  factory $IntroStateCopyWith(
          IntroState value, $Res Function(IntroState) then) =
      _$IntroStateCopyWithImpl<$Res>;
  $Res call({bool posCatalogList, bool posCustomerList});
}

/// @nodoc
class _$IntroStateCopyWithImpl<$Res> implements $IntroStateCopyWith<$Res> {
  _$IntroStateCopyWithImpl(this._value, this._then);

  final IntroState _value;
  // ignore: unused_field
  final $Res Function(IntroState) _then;

  @override
  $Res call({
    Object? posCatalogList = freezed,
    Object? posCustomerList = freezed,
  }) {
    return _then(_value.copyWith(
      posCatalogList: posCatalogList == freezed
          ? _value.posCatalogList
          : posCatalogList // ignore: cast_nullable_to_non_nullable
              as bool,
      posCustomerList: posCustomerList == freezed
          ? _value.posCustomerList
          : posCustomerList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_IntroStateCopyWith<$Res>
    implements $IntroStateCopyWith<$Res> {
  factory _$$_IntroStateCopyWith(
          _$_IntroState value, $Res Function(_$_IntroState) then) =
      __$$_IntroStateCopyWithImpl<$Res>;
  @override
  $Res call({bool posCatalogList, bool posCustomerList});
}

/// @nodoc
class __$$_IntroStateCopyWithImpl<$Res> extends _$IntroStateCopyWithImpl<$Res>
    implements _$$_IntroStateCopyWith<$Res> {
  __$$_IntroStateCopyWithImpl(
      _$_IntroState _value, $Res Function(_$_IntroState) _then)
      : super(_value, (v) => _then(v as _$_IntroState));

  @override
  _$_IntroState get _value => super._value as _$_IntroState;

  @override
  $Res call({
    Object? posCatalogList = freezed,
    Object? posCustomerList = freezed,
  }) {
    return _then(_$_IntroState(
      posCatalogList: posCatalogList == freezed
          ? _value.posCatalogList
          : posCatalogList // ignore: cast_nullable_to_non_nullable
              as bool,
      posCustomerList: posCustomerList == freezed
          ? _value.posCustomerList
          : posCustomerList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntroState with DiagnosticableTreeMixin implements _IntroState {
  const _$_IntroState(
      {required this.posCatalogList, required this.posCustomerList});

  factory _$_IntroState.fromJson(Map<String, dynamic> json) =>
      _$$_IntroStateFromJson(json);

  @override
  final bool posCatalogList;
  @override
  final bool posCustomerList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntroState(posCatalogList: $posCatalogList, posCustomerList: $posCustomerList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntroState'))
      ..add(DiagnosticsProperty('posCatalogList', posCatalogList))
      ..add(DiagnosticsProperty('posCustomerList', posCustomerList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntroState &&
            const DeepCollectionEquality()
                .equals(other.posCatalogList, posCatalogList) &&
            const DeepCollectionEquality()
                .equals(other.posCustomerList, posCustomerList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posCatalogList),
      const DeepCollectionEquality().hash(posCustomerList));

  @JsonKey(ignore: true)
  @override
  _$$_IntroStateCopyWith<_$_IntroState> get copyWith =>
      __$$_IntroStateCopyWithImpl<_$_IntroState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntroStateToJson(this);
  }
}

abstract class _IntroState implements IntroState {
  const factory _IntroState(
      {required final bool posCatalogList,
      required final bool posCustomerList}) = _$_IntroState;

  factory _IntroState.fromJson(Map<String, dynamic> json) =
      _$_IntroState.fromJson;

  @override
  bool get posCatalogList => throw _privateConstructorUsedError;
  @override
  bool get posCustomerList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IntroStateCopyWith<_$_IntroState> get copyWith =>
      throw _privateConstructorUsedError;
}
