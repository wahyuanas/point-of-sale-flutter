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

VehicleListState _$VehicleListStateFromJson(Map<String, dynamic> json) {
  return _VehicleListState.fromJson(json);
}

/// @nodoc
mixin _$VehicleListState {
  List<Vehicle>? get vehicles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleListStateCopyWith<VehicleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleListStateCopyWith<$Res> {
  factory $VehicleListStateCopyWith(
          VehicleListState value, $Res Function(VehicleListState) then) =
      _$VehicleListStateCopyWithImpl<$Res>;
  $Res call({List<Vehicle>? vehicles});
}

/// @nodoc
class _$VehicleListStateCopyWithImpl<$Res>
    implements $VehicleListStateCopyWith<$Res> {
  _$VehicleListStateCopyWithImpl(this._value, this._then);

  final VehicleListState _value;
  // ignore: unused_field
  final $Res Function(VehicleListState) _then;

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
abstract class _$$_VehicleListStateCopyWith<$Res>
    implements $VehicleListStateCopyWith<$Res> {
  factory _$$_VehicleListStateCopyWith(
          _$_VehicleListState value, $Res Function(_$_VehicleListState) then) =
      __$$_VehicleListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Vehicle>? vehicles});
}

/// @nodoc
class __$$_VehicleListStateCopyWithImpl<$Res>
    extends _$VehicleListStateCopyWithImpl<$Res>
    implements _$$_VehicleListStateCopyWith<$Res> {
  __$$_VehicleListStateCopyWithImpl(
      _$_VehicleListState _value, $Res Function(_$_VehicleListState) _then)
      : super(_value, (v) => _then(v as _$_VehicleListState));

  @override
  _$_VehicleListState get _value => super._value as _$_VehicleListState;

  @override
  $Res call({
    Object? vehicles = freezed,
  }) {
    return _then(_$_VehicleListState(
      vehicles: vehicles == freezed
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleListState
    with DiagnosticableTreeMixin
    implements _VehicleListState {
  const _$_VehicleListState({required final List<Vehicle>? vehicles})
      : _vehicles = vehicles;

  factory _$_VehicleListState.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleListStateFromJson(json);

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
    return 'VehicleListState(vehicles: $vehicles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleListState'))
      ..add(DiagnosticsProperty('vehicles', vehicles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleListState &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_vehicles));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleListStateCopyWith<_$_VehicleListState> get copyWith =>
      __$$_VehicleListStateCopyWithImpl<_$_VehicleListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleListStateToJson(this);
  }
}

abstract class _VehicleListState implements VehicleListState {
  const factory _VehicleListState({required final List<Vehicle>? vehicles}) =
      _$_VehicleListState;

  factory _VehicleListState.fromJson(Map<String, dynamic> json) =
      _$_VehicleListState.fromJson;

  @override
  List<Vehicle>? get vehicles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleListStateCopyWith<_$_VehicleListState> get copyWith =>
      throw _privateConstructorUsedError;
}
