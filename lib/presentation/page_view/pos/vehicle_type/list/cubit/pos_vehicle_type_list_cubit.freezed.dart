// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_vehicle_type_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosVehicleTypeListState {
  List<VehicleTypeModel>? get vehicleTypes =>
      throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosVehicleTypeListStateCopyWith<PosVehicleTypeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosVehicleTypeListStateCopyWith<$Res> {
  factory $PosVehicleTypeListStateCopyWith(PosVehicleTypeListState value,
          $Res Function(PosVehicleTypeListState) then) =
      _$PosVehicleTypeListStateCopyWithImpl<$Res>;
  $Res call({List<VehicleTypeModel>? vehicleTypes, String? keyWord});
}

/// @nodoc
class _$PosVehicleTypeListStateCopyWithImpl<$Res>
    implements $PosVehicleTypeListStateCopyWith<$Res> {
  _$PosVehicleTypeListStateCopyWithImpl(this._value, this._then);

  final PosVehicleTypeListState _value;
  // ignore: unused_field
  final $Res Function(PosVehicleTypeListState) _then;

  @override
  $Res call({
    Object? vehicleTypes = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleTypes: vehicleTypes == freezed
          ? _value.vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<VehicleTypeModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosVehicleTypeListStateCopyWith<$Res>
    implements $PosVehicleTypeListStateCopyWith<$Res> {
  factory _$$_PosVehicleTypeListStateCopyWith(_$_PosVehicleTypeListState value,
          $Res Function(_$_PosVehicleTypeListState) then) =
      __$$_PosVehicleTypeListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<VehicleTypeModel>? vehicleTypes, String? keyWord});
}

/// @nodoc
class __$$_PosVehicleTypeListStateCopyWithImpl<$Res>
    extends _$PosVehicleTypeListStateCopyWithImpl<$Res>
    implements _$$_PosVehicleTypeListStateCopyWith<$Res> {
  __$$_PosVehicleTypeListStateCopyWithImpl(_$_PosVehicleTypeListState _value,
      $Res Function(_$_PosVehicleTypeListState) _then)
      : super(_value, (v) => _then(v as _$_PosVehicleTypeListState));

  @override
  _$_PosVehicleTypeListState get _value =>
      super._value as _$_PosVehicleTypeListState;

  @override
  $Res call({
    Object? vehicleTypes = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PosVehicleTypeListState(
      vehicleTypes: vehicleTypes == freezed
          ? _value._vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<VehicleTypeModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PosVehicleTypeListState
    with DiagnosticableTreeMixin
    implements _PosVehicleTypeListState {
  const _$_PosVehicleTypeListState(
      {required final List<VehicleTypeModel>? vehicleTypes,
      required this.keyWord})
      : _vehicleTypes = vehicleTypes;

  final List<VehicleTypeModel>? _vehicleTypes;
  @override
  List<VehicleTypeModel>? get vehicleTypes {
    final value = _vehicleTypes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosVehicleTypeListState(vehicleTypes: $vehicleTypes, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosVehicleTypeListState'))
      ..add(DiagnosticsProperty('vehicleTypes', vehicleTypes))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosVehicleTypeListState &&
            const DeepCollectionEquality()
                .equals(other._vehicleTypes, _vehicleTypes) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vehicleTypes),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PosVehicleTypeListStateCopyWith<_$_PosVehicleTypeListState>
      get copyWith =>
          __$$_PosVehicleTypeListStateCopyWithImpl<_$_PosVehicleTypeListState>(
              this, _$identity);
}

abstract class _PosVehicleTypeListState implements PosVehicleTypeListState {
  const factory _PosVehicleTypeListState(
      {required final List<VehicleTypeModel>? vehicleTypes,
      required final String? keyWord}) = _$_PosVehicleTypeListState;

  @override
  List<VehicleTypeModel>? get vehicleTypes =>
      throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosVehicleTypeListStateCopyWith<_$_PosVehicleTypeListState>
      get copyWith => throw _privateConstructorUsedError;
}
