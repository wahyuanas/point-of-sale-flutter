// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleState _$VehicleStateFromJson(Map<String, dynamic> json) {
  return _VehicleState.fromJson(json);
}

/// @nodoc
mixin _$VehicleState {
  List<Vehicle>? get vehicles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleStateCopyWith<VehicleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleStateCopyWith<$Res> {
  factory $VehicleStateCopyWith(
          VehicleState value, $Res Function(VehicleState) then) =
      _$VehicleStateCopyWithImpl<$Res>;
  $Res call({List<Vehicle>? vehicles});
}

/// @nodoc
class _$VehicleStateCopyWithImpl<$Res> implements $VehicleStateCopyWith<$Res> {
  _$VehicleStateCopyWithImpl(this._value, this._then);

  final VehicleState _value;
  // ignore: unused_field
  final $Res Function(VehicleState) _then;

  @override
  $Res call({
    Object? vehicles = freezed,
  }) {
    return _then(_value.copyWith(
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
    ));
  }
}

/// @nodoc
abstract class _$$_VehicleStateCopyWith<$Res>
    implements $VehicleStateCopyWith<$Res> {
  factory _$$_VehicleStateCopyWith(
          _$_VehicleState value, $Res Function(_$_VehicleState) then) =
      __$$_VehicleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Vehicle>? vehicles});
}

/// @nodoc
class __$$_VehicleStateCopyWithImpl<$Res>
    extends _$VehicleStateCopyWithImpl<$Res>
    implements _$$_VehicleStateCopyWith<$Res> {
  __$$_VehicleStateCopyWithImpl(
      _$_VehicleState _value, $Res Function(_$_VehicleState) _then)
      : super(_value, (v) => _then(v as _$_VehicleState));

  @override
  _$_VehicleState get _value => super._value as _$_VehicleState;

  @override
  $Res call({
    Object? vehicles = freezed,
  }) {
    return _then(_$_VehicleState(
      vehicles: vehicles == freezed
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleState with DiagnosticableTreeMixin implements _VehicleState {
  const _$_VehicleState({required final List<Vehicle>? vehicles})
      : _vehicles = vehicles;

  factory _$_VehicleState.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleStateFromJson(json);

  final List<Vehicle>? _vehicles;
  @override
  List<Vehicle>? get vehicles {
    final value = _vehicles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleState(vehicles: $vehicles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleState'))
      ..add(DiagnosticsProperty('vehicles', vehicles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleState &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_vehicles));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleStateCopyWith<_$_VehicleState> get copyWith =>
      __$$_VehicleStateCopyWithImpl<_$_VehicleState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleStateToJson(this);
  }
}

abstract class _VehicleState implements VehicleState {
  const factory _VehicleState({required final List<Vehicle>? vehicles}) =
      _$_VehicleState;

  factory _VehicleState.fromJson(Map<String, dynamic> json) =
      _$_VehicleState.fromJson;

  @override
  List<Vehicle>? get vehicles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleStateCopyWith<_$_VehicleState> get copyWith =>
      throw _privateConstructorUsedError;
}
