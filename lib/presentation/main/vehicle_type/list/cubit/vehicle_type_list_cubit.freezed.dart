// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_type_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleTypeListState _$VehicleTypeListStateFromJson(Map<String, dynamic> json) {
  return _VehicleTypeListState.fromJson(json);
}

/// @nodoc
mixin _$VehicleTypeListState {
  List<VehicleType>? get vehicleTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleTypeListStateCopyWith<VehicleTypeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeListStateCopyWith<$Res> {
  factory $VehicleTypeListStateCopyWith(VehicleTypeListState value,
          $Res Function(VehicleTypeListState) then) =
      _$VehicleTypeListStateCopyWithImpl<$Res>;
  $Res call({List<VehicleType>? vehicleTypes});
}

/// @nodoc
class _$VehicleTypeListStateCopyWithImpl<$Res>
    implements $VehicleTypeListStateCopyWith<$Res> {
  _$VehicleTypeListStateCopyWithImpl(this._value, this._then);

  final VehicleTypeListState _value;
  // ignore: unused_field
  final $Res Function(VehicleTypeListState) _then;

  @override
  $Res call({
    Object? vehicleTypes = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleTypes: vehicleTypes == freezed
          ? _value.vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<VehicleType>?,
    ));
  }
}

/// @nodoc
abstract class _$$_VehicleTypeListStateCopyWith<$Res>
    implements $VehicleTypeListStateCopyWith<$Res> {
  factory _$$_VehicleTypeListStateCopyWith(_$_VehicleTypeListState value,
          $Res Function(_$_VehicleTypeListState) then) =
      __$$_VehicleTypeListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<VehicleType>? vehicleTypes});
}

/// @nodoc
class __$$_VehicleTypeListStateCopyWithImpl<$Res>
    extends _$VehicleTypeListStateCopyWithImpl<$Res>
    implements _$$_VehicleTypeListStateCopyWith<$Res> {
  __$$_VehicleTypeListStateCopyWithImpl(_$_VehicleTypeListState _value,
      $Res Function(_$_VehicleTypeListState) _then)
      : super(_value, (v) => _then(v as _$_VehicleTypeListState));

  @override
  _$_VehicleTypeListState get _value => super._value as _$_VehicleTypeListState;

  @override
  $Res call({
    Object? vehicleTypes = freezed,
  }) {
    return _then(_$_VehicleTypeListState(
      vehicleTypes: vehicleTypes == freezed
          ? _value._vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<VehicleType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleTypeListState
    with DiagnosticableTreeMixin
    implements _VehicleTypeListState {
  const _$_VehicleTypeListState(
      {required final List<VehicleType>? vehicleTypes})
      : _vehicleTypes = vehicleTypes;

  factory _$_VehicleTypeListState.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleTypeListStateFromJson(json);

  final List<VehicleType>? _vehicleTypes;
  @override
  List<VehicleType>? get vehicleTypes {
    final value = _vehicleTypes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleTypeListState(vehicleTypes: $vehicleTypes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleTypeListState'))
      ..add(DiagnosticsProperty('vehicleTypes', vehicleTypes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleTypeListState &&
            const DeepCollectionEquality()
                .equals(other._vehicleTypes, _vehicleTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_vehicleTypes));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleTypeListStateCopyWith<_$_VehicleTypeListState> get copyWith =>
      __$$_VehicleTypeListStateCopyWithImpl<_$_VehicleTypeListState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleTypeListStateToJson(this);
  }
}

abstract class _VehicleTypeListState implements VehicleTypeListState {
  const factory _VehicleTypeListState(
          {required final List<VehicleType>? vehicleTypes}) =
      _$_VehicleTypeListState;

  factory _VehicleTypeListState.fromJson(Map<String, dynamic> json) =
      _$_VehicleTypeListState.fromJson;

  @override
  List<VehicleType>? get vehicleTypes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleTypeListStateCopyWith<_$_VehicleTypeListState> get copyWith =>
      throw _privateConstructorUsedError;
}
