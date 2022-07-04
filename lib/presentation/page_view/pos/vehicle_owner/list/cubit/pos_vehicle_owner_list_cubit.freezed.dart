// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_vehicle_owner_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosVehicleOwnerListState {
  List<VehicleOwnerModel>? get vehicleOwners =>
      throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosVehicleOwnerListStateCopyWith<PosVehicleOwnerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosVehicleOwnerListStateCopyWith<$Res> {
  factory $PosVehicleOwnerListStateCopyWith(PosVehicleOwnerListState value,
          $Res Function(PosVehicleOwnerListState) then) =
      _$PosVehicleOwnerListStateCopyWithImpl<$Res>;
  $Res call({List<VehicleOwnerModel>? vehicleOwners, String? keyWord});
}

/// @nodoc
class _$PosVehicleOwnerListStateCopyWithImpl<$Res>
    implements $PosVehicleOwnerListStateCopyWith<$Res> {
  _$PosVehicleOwnerListStateCopyWithImpl(this._value, this._then);

  final PosVehicleOwnerListState _value;
  // ignore: unused_field
  final $Res Function(PosVehicleOwnerListState) _then;

  @override
  $Res call({
    Object? vehicleOwners = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleOwners: vehicleOwners == freezed
          ? _value.vehicleOwners
          : vehicleOwners // ignore: cast_nullable_to_non_nullable
              as List<VehicleOwnerModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosVehicleOwnerListStateCopyWith<$Res>
    implements $PosVehicleOwnerListStateCopyWith<$Res> {
  factory _$$_PosVehicleOwnerListStateCopyWith(
          _$_PosVehicleOwnerListState value,
          $Res Function(_$_PosVehicleOwnerListState) then) =
      __$$_PosVehicleOwnerListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<VehicleOwnerModel>? vehicleOwners, String? keyWord});
}

/// @nodoc
class __$$_PosVehicleOwnerListStateCopyWithImpl<$Res>
    extends _$PosVehicleOwnerListStateCopyWithImpl<$Res>
    implements _$$_PosVehicleOwnerListStateCopyWith<$Res> {
  __$$_PosVehicleOwnerListStateCopyWithImpl(_$_PosVehicleOwnerListState _value,
      $Res Function(_$_PosVehicleOwnerListState) _then)
      : super(_value, (v) => _then(v as _$_PosVehicleOwnerListState));

  @override
  _$_PosVehicleOwnerListState get _value =>
      super._value as _$_PosVehicleOwnerListState;

  @override
  $Res call({
    Object? vehicleOwners = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PosVehicleOwnerListState(
      vehicleOwners: vehicleOwners == freezed
          ? _value._vehicleOwners
          : vehicleOwners // ignore: cast_nullable_to_non_nullable
              as List<VehicleOwnerModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PosVehicleOwnerListState
    with DiagnosticableTreeMixin
    implements _PosVehicleOwnerListState {
  const _$_PosVehicleOwnerListState(
      {required final List<VehicleOwnerModel>? vehicleOwners,
      required this.keyWord})
      : _vehicleOwners = vehicleOwners;

  final List<VehicleOwnerModel>? _vehicleOwners;
  @override
  List<VehicleOwnerModel>? get vehicleOwners {
    final value = _vehicleOwners;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosVehicleOwnerListState(vehicleOwners: $vehicleOwners, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosVehicleOwnerListState'))
      ..add(DiagnosticsProperty('vehicleOwners', vehicleOwners))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosVehicleOwnerListState &&
            const DeepCollectionEquality()
                .equals(other._vehicleOwners, _vehicleOwners) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vehicleOwners),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PosVehicleOwnerListStateCopyWith<_$_PosVehicleOwnerListState>
      get copyWith => __$$_PosVehicleOwnerListStateCopyWithImpl<
          _$_PosVehicleOwnerListState>(this, _$identity);
}

abstract class _PosVehicleOwnerListState implements PosVehicleOwnerListState {
  const factory _PosVehicleOwnerListState(
      {required final List<VehicleOwnerModel>? vehicleOwners,
      required final String? keyWord}) = _$_PosVehicleOwnerListState;

  @override
  List<VehicleOwnerModel>? get vehicleOwners =>
      throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosVehicleOwnerListStateCopyWith<_$_PosVehicleOwnerListState>
      get copyWith => throw _privateConstructorUsedError;
}
