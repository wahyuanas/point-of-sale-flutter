// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_vehicle_manufacture_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosVehicleManufactureListState {
  List<VehicleManufactureModel>? get vehicleManufactures =>
      throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosVehicleManufactureListStateCopyWith<PosVehicleManufactureListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosVehicleManufactureListStateCopyWith<$Res> {
  factory $PosVehicleManufactureListStateCopyWith(
          PosVehicleManufactureListState value,
          $Res Function(PosVehicleManufactureListState) then) =
      _$PosVehicleManufactureListStateCopyWithImpl<$Res>;
  $Res call(
      {List<VehicleManufactureModel>? vehicleManufactures, String? keyWord});
}

/// @nodoc
class _$PosVehicleManufactureListStateCopyWithImpl<$Res>
    implements $PosVehicleManufactureListStateCopyWith<$Res> {
  _$PosVehicleManufactureListStateCopyWithImpl(this._value, this._then);

  final PosVehicleManufactureListState _value;
  // ignore: unused_field
  final $Res Function(PosVehicleManufactureListState) _then;

  @override
  $Res call({
    Object? vehicleManufactures = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleManufactures: vehicleManufactures == freezed
          ? _value.vehicleManufactures
          : vehicleManufactures // ignore: cast_nullable_to_non_nullable
              as List<VehicleManufactureModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosVehicleManufactureListStateCopyWith<$Res>
    implements $PosVehicleManufactureListStateCopyWith<$Res> {
  factory _$$_PosVehicleManufactureListStateCopyWith(
          _$_PosVehicleManufactureListState value,
          $Res Function(_$_PosVehicleManufactureListState) then) =
      __$$_PosVehicleManufactureListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<VehicleManufactureModel>? vehicleManufactures, String? keyWord});
}

/// @nodoc
class __$$_PosVehicleManufactureListStateCopyWithImpl<$Res>
    extends _$PosVehicleManufactureListStateCopyWithImpl<$Res>
    implements _$$_PosVehicleManufactureListStateCopyWith<$Res> {
  __$$_PosVehicleManufactureListStateCopyWithImpl(
      _$_PosVehicleManufactureListState _value,
      $Res Function(_$_PosVehicleManufactureListState) _then)
      : super(_value, (v) => _then(v as _$_PosVehicleManufactureListState));

  @override
  _$_PosVehicleManufactureListState get _value =>
      super._value as _$_PosVehicleManufactureListState;

  @override
  $Res call({
    Object? vehicleManufactures = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PosVehicleManufactureListState(
      vehicleManufactures: vehicleManufactures == freezed
          ? _value._vehicleManufactures
          : vehicleManufactures // ignore: cast_nullable_to_non_nullable
              as List<VehicleManufactureModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PosVehicleManufactureListState
    with DiagnosticableTreeMixin
    implements _PosVehicleManufactureListState {
  const _$_PosVehicleManufactureListState(
      {required final List<VehicleManufactureModel>? vehicleManufactures,
      required this.keyWord})
      : _vehicleManufactures = vehicleManufactures;

  final List<VehicleManufactureModel>? _vehicleManufactures;
  @override
  List<VehicleManufactureModel>? get vehicleManufactures {
    final value = _vehicleManufactures;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosVehicleManufactureListState(vehicleManufactures: $vehicleManufactures, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosVehicleManufactureListState'))
      ..add(DiagnosticsProperty('vehicleManufactures', vehicleManufactures))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosVehicleManufactureListState &&
            const DeepCollectionEquality()
                .equals(other._vehicleManufactures, _vehicleManufactures) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vehicleManufactures),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PosVehicleManufactureListStateCopyWith<_$_PosVehicleManufactureListState>
      get copyWith => __$$_PosVehicleManufactureListStateCopyWithImpl<
          _$_PosVehicleManufactureListState>(this, _$identity);
}

abstract class _PosVehicleManufactureListState
    implements PosVehicleManufactureListState {
  const factory _PosVehicleManufactureListState(
      {required final List<VehicleManufactureModel>? vehicleManufactures,
      required final String? keyWord}) = _$_PosVehicleManufactureListState;

  @override
  List<VehicleManufactureModel>? get vehicleManufactures =>
      throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosVehicleManufactureListStateCopyWith<_$_PosVehicleManufactureListState>
      get copyWith => throw _privateConstructorUsedError;
}
