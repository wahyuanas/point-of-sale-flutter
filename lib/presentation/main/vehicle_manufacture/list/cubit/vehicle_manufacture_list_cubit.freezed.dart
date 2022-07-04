// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_manufacture_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleManufactureListState _$VehicleManufactureListStateFromJson(
    Map<String, dynamic> json) {
  return _VehicleManufactureListState.fromJson(json);
}

/// @nodoc
mixin _$VehicleManufactureListState {
  List<VehicleManufacture>? get vehicleManufactures =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleManufactureListStateCopyWith<VehicleManufactureListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleManufactureListStateCopyWith<$Res> {
  factory $VehicleManufactureListStateCopyWith(
          VehicleManufactureListState value,
          $Res Function(VehicleManufactureListState) then) =
      _$VehicleManufactureListStateCopyWithImpl<$Res>;
  $Res call({List<VehicleManufacture>? vehicleManufactures});
}

/// @nodoc
class _$VehicleManufactureListStateCopyWithImpl<$Res>
    implements $VehicleManufactureListStateCopyWith<$Res> {
  _$VehicleManufactureListStateCopyWithImpl(this._value, this._then);

  final VehicleManufactureListState _value;
  // ignore: unused_field
  final $Res Function(VehicleManufactureListState) _then;

  @override
  $Res call({
    Object? vehicleManufactures = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleManufactures: vehicleManufactures == freezed
          ? _value.vehicleManufactures
          : vehicleManufactures // ignore: cast_nullable_to_non_nullable
              as List<VehicleManufacture>?,
    ));
  }
}

/// @nodoc
abstract class _$$_VehicleManufactureListStateCopyWith<$Res>
    implements $VehicleManufactureListStateCopyWith<$Res> {
  factory _$$_VehicleManufactureListStateCopyWith(
          _$_VehicleManufactureListState value,
          $Res Function(_$_VehicleManufactureListState) then) =
      __$$_VehicleManufactureListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<VehicleManufacture>? vehicleManufactures});
}

/// @nodoc
class __$$_VehicleManufactureListStateCopyWithImpl<$Res>
    extends _$VehicleManufactureListStateCopyWithImpl<$Res>
    implements _$$_VehicleManufactureListStateCopyWith<$Res> {
  __$$_VehicleManufactureListStateCopyWithImpl(
      _$_VehicleManufactureListState _value,
      $Res Function(_$_VehicleManufactureListState) _then)
      : super(_value, (v) => _then(v as _$_VehicleManufactureListState));

  @override
  _$_VehicleManufactureListState get _value =>
      super._value as _$_VehicleManufactureListState;

  @override
  $Res call({
    Object? vehicleManufactures = freezed,
  }) {
    return _then(_$_VehicleManufactureListState(
      vehicleManufactures: vehicleManufactures == freezed
          ? _value._vehicleManufactures
          : vehicleManufactures // ignore: cast_nullable_to_non_nullable
              as List<VehicleManufacture>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleManufactureListState
    with DiagnosticableTreeMixin
    implements _VehicleManufactureListState {
  const _$_VehicleManufactureListState(
      {required final List<VehicleManufacture>? vehicleManufactures})
      : _vehicleManufactures = vehicleManufactures;

  factory _$_VehicleManufactureListState.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleManufactureListStateFromJson(json);

  final List<VehicleManufacture>? _vehicleManufactures;
  @override
  List<VehicleManufacture>? get vehicleManufactures {
    final value = _vehicleManufactures;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleManufactureListState(vehicleManufactures: $vehicleManufactures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleManufactureListState'))
      ..add(DiagnosticsProperty('vehicleManufactures', vehicleManufactures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleManufactureListState &&
            const DeepCollectionEquality()
                .equals(other._vehicleManufactures, _vehicleManufactures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_vehicleManufactures));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleManufactureListStateCopyWith<_$_VehicleManufactureListState>
      get copyWith => __$$_VehicleManufactureListStateCopyWithImpl<
          _$_VehicleManufactureListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleManufactureListStateToJson(this);
  }
}

abstract class _VehicleManufactureListState
    implements VehicleManufactureListState {
  const factory _VehicleManufactureListState(
          {required final List<VehicleManufacture>? vehicleManufactures}) =
      _$_VehicleManufactureListState;

  factory _VehicleManufactureListState.fromJson(Map<String, dynamic> json) =
      _$_VehicleManufactureListState.fromJson;

  @override
  List<VehicleManufacture>? get vehicleManufactures =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleManufactureListStateCopyWith<_$_VehicleManufactureListState>
      get copyWith => throw _privateConstructorUsedError;
}
