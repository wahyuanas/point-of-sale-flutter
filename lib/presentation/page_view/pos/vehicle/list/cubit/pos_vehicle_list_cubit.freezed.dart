// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_vehicle_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosVehicleListState {
  List<Vehicle>? get vehicles => throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosVehicleListStateCopyWith<PosVehicleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosVehicleListStateCopyWith<$Res> {
  factory $PosVehicleListStateCopyWith(
          PosVehicleListState value, $Res Function(PosVehicleListState) then) =
      _$PosVehicleListStateCopyWithImpl<$Res>;
  $Res call({List<Vehicle>? vehicles, String? keyWord});
}

/// @nodoc
class _$PosVehicleListStateCopyWithImpl<$Res>
    implements $PosVehicleListStateCopyWith<$Res> {
  _$PosVehicleListStateCopyWithImpl(this._value, this._then);

  final PosVehicleListState _value;
  // ignore: unused_field
  final $Res Function(PosVehicleListState) _then;

  @override
  $Res call({
    Object? vehicles = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosVehicleListStateCopyWith<$Res>
    implements $PosVehicleListStateCopyWith<$Res> {
  factory _$$_PosVehicleListStateCopyWith(_$_PosVehicleListState value,
          $Res Function(_$_PosVehicleListState) then) =
      __$$_PosVehicleListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Vehicle>? vehicles, String? keyWord});
}

/// @nodoc
class __$$_PosVehicleListStateCopyWithImpl<$Res>
    extends _$PosVehicleListStateCopyWithImpl<$Res>
    implements _$$_PosVehicleListStateCopyWith<$Res> {
  __$$_PosVehicleListStateCopyWithImpl(_$_PosVehicleListState _value,
      $Res Function(_$_PosVehicleListState) _then)
      : super(_value, (v) => _then(v as _$_PosVehicleListState));

  @override
  _$_PosVehicleListState get _value => super._value as _$_PosVehicleListState;

  @override
  $Res call({
    Object? vehicles = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PosVehicleListState(
      vehicles: vehicles == freezed
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PosVehicleListState
    with DiagnosticableTreeMixin
    implements _PosVehicleListState {
  const _$_PosVehicleListState(
      {required final List<Vehicle>? vehicles, required this.keyWord})
      : _vehicles = vehicles;

  final List<Vehicle>? _vehicles;
  @override
  List<Vehicle>? get vehicles {
    final value = _vehicles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosVehicleListState(vehicles: $vehicles, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosVehicleListState'))
      ..add(DiagnosticsProperty('vehicles', vehicles))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosVehicleListState &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vehicles),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PosVehicleListStateCopyWith<_$_PosVehicleListState> get copyWith =>
      __$$_PosVehicleListStateCopyWithImpl<_$_PosVehicleListState>(
          this, _$identity);
}

abstract class _PosVehicleListState implements PosVehicleListState {
  const factory _PosVehicleListState(
      {required final List<Vehicle>? vehicles,
      required final String? keyWord}) = _$_PosVehicleListState;

  @override
  List<Vehicle>? get vehicles => throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosVehicleListStateCopyWith<_$_PosVehicleListState> get copyWith =>
      throw _privateConstructorUsedError;
}
