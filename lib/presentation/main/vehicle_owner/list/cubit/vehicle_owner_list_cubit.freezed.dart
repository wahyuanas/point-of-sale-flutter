// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_owner_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleOwnerListState _$VehicleOwnerListStateFromJson(
    Map<String, dynamic> json) {
  return _VehicleOwnerListState.fromJson(json);
}

/// @nodoc
mixin _$VehicleOwnerListState {
  List<VehicleOwner>? get vehicleOwners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleOwnerListStateCopyWith<VehicleOwnerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleOwnerListStateCopyWith<$Res> {
  factory $VehicleOwnerListStateCopyWith(VehicleOwnerListState value,
          $Res Function(VehicleOwnerListState) then) =
      _$VehicleOwnerListStateCopyWithImpl<$Res>;
  $Res call({List<VehicleOwner>? vehicleOwners});
}

/// @nodoc
class _$VehicleOwnerListStateCopyWithImpl<$Res>
    implements $VehicleOwnerListStateCopyWith<$Res> {
  _$VehicleOwnerListStateCopyWithImpl(this._value, this._then);

  final VehicleOwnerListState _value;
  // ignore: unused_field
  final $Res Function(VehicleOwnerListState) _then;

  @override
  $Res call({
    Object? vehicleOwners = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleOwners: vehicleOwners == freezed
          ? _value.vehicleOwners
          : vehicleOwners // ignore: cast_nullable_to_non_nullable
              as List<VehicleOwner>?,
    ));
  }
}

/// @nodoc
abstract class _$$_VehicleOwnerListStateCopyWith<$Res>
    implements $VehicleOwnerListStateCopyWith<$Res> {
  factory _$$_VehicleOwnerListStateCopyWith(_$_VehicleOwnerListState value,
          $Res Function(_$_VehicleOwnerListState) then) =
      __$$_VehicleOwnerListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<VehicleOwner>? vehicleOwners});
}

/// @nodoc
class __$$_VehicleOwnerListStateCopyWithImpl<$Res>
    extends _$VehicleOwnerListStateCopyWithImpl<$Res>
    implements _$$_VehicleOwnerListStateCopyWith<$Res> {
  __$$_VehicleOwnerListStateCopyWithImpl(_$_VehicleOwnerListState _value,
      $Res Function(_$_VehicleOwnerListState) _then)
      : super(_value, (v) => _then(v as _$_VehicleOwnerListState));

  @override
  _$_VehicleOwnerListState get _value =>
      super._value as _$_VehicleOwnerListState;

  @override
  $Res call({
    Object? vehicleOwners = freezed,
  }) {
    return _then(_$_VehicleOwnerListState(
      vehicleOwners: vehicleOwners == freezed
          ? _value._vehicleOwners
          : vehicleOwners // ignore: cast_nullable_to_non_nullable
              as List<VehicleOwner>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleOwnerListState
    with DiagnosticableTreeMixin
    implements _VehicleOwnerListState {
  const _$_VehicleOwnerListState(
      {required final List<VehicleOwner>? vehicleOwners})
      : _vehicleOwners = vehicleOwners;

  factory _$_VehicleOwnerListState.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleOwnerListStateFromJson(json);

  final List<VehicleOwner>? _vehicleOwners;
  @override
  List<VehicleOwner>? get vehicleOwners {
    final value = _vehicleOwners;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleOwnerListState(vehicleOwners: $vehicleOwners)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleOwnerListState'))
      ..add(DiagnosticsProperty('vehicleOwners', vehicleOwners));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleOwnerListState &&
            const DeepCollectionEquality()
                .equals(other._vehicleOwners, _vehicleOwners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_vehicleOwners));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleOwnerListStateCopyWith<_$_VehicleOwnerListState> get copyWith =>
      __$$_VehicleOwnerListStateCopyWithImpl<_$_VehicleOwnerListState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleOwnerListStateToJson(this);
  }
}

abstract class _VehicleOwnerListState implements VehicleOwnerListState {
  const factory _VehicleOwnerListState(
          {required final List<VehicleOwner>? vehicleOwners}) =
      _$_VehicleOwnerListState;

  factory _VehicleOwnerListState.fromJson(Map<String, dynamic> json) =
      _$_VehicleOwnerListState.fromJson;

  @override
  List<VehicleOwner>? get vehicleOwners => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleOwnerListStateCopyWith<_$_VehicleOwnerListState> get copyWith =>
      throw _privateConstructorUsedError;
}
