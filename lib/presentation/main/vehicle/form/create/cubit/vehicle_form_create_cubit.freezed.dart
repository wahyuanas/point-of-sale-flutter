// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_form_create_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleFormCreateState {
  StateStatus<FailureExceptions, Vehicle> get status =>
      throw _privateConstructorUsedError;
  CreateVehicle get createVehicle => throw _privateConstructorUsedError;
  bool get initial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleFormCreateStateCopyWith<VehicleFormCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleFormCreateStateCopyWith<$Res> {
  factory $VehicleFormCreateStateCopyWith(VehicleFormCreateState value,
          $Res Function(VehicleFormCreateState) then) =
      _$VehicleFormCreateStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, Vehicle> status,
      CreateVehicle createVehicle,
      bool initial});

  $StateStatusCopyWith<FailureExceptions, Vehicle, $Res> get status;
  $CreateVehicleCopyWith<$Res> get createVehicle;
}

/// @nodoc
class _$VehicleFormCreateStateCopyWithImpl<$Res>
    implements $VehicleFormCreateStateCopyWith<$Res> {
  _$VehicleFormCreateStateCopyWithImpl(this._value, this._then);

  final VehicleFormCreateState _value;
  // ignore: unused_field
  final $Res Function(VehicleFormCreateState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? createVehicle = freezed,
    Object? initial = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Vehicle>,
      createVehicle: createVehicle == freezed
          ? _value.createVehicle
          : createVehicle // ignore: cast_nullable_to_non_nullable
              as CreateVehicle,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, Vehicle, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, Vehicle, $Res>(_value.status,
        (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $CreateVehicleCopyWith<$Res> get createVehicle {
    return $CreateVehicleCopyWith<$Res>(_value.createVehicle, (value) {
      return _then(_value.copyWith(createVehicle: value));
    });
  }
}

/// @nodoc
abstract class _$$_VehicleFormCreateStateCopyWith<$Res>
    implements $VehicleFormCreateStateCopyWith<$Res> {
  factory _$$_VehicleFormCreateStateCopyWith(_$_VehicleFormCreateState value,
          $Res Function(_$_VehicleFormCreateState) then) =
      __$$_VehicleFormCreateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, Vehicle> status,
      CreateVehicle createVehicle,
      bool initial});

  @override
  $StateStatusCopyWith<FailureExceptions, Vehicle, $Res> get status;
  @override
  $CreateVehicleCopyWith<$Res> get createVehicle;
}

/// @nodoc
class __$$_VehicleFormCreateStateCopyWithImpl<$Res>
    extends _$VehicleFormCreateStateCopyWithImpl<$Res>
    implements _$$_VehicleFormCreateStateCopyWith<$Res> {
  __$$_VehicleFormCreateStateCopyWithImpl(_$_VehicleFormCreateState _value,
      $Res Function(_$_VehicleFormCreateState) _then)
      : super(_value, (v) => _then(v as _$_VehicleFormCreateState));

  @override
  _$_VehicleFormCreateState get _value =>
      super._value as _$_VehicleFormCreateState;

  @override
  $Res call({
    Object? status = freezed,
    Object? createVehicle = freezed,
    Object? initial = freezed,
  }) {
    return _then(_$_VehicleFormCreateState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Vehicle>,
      createVehicle: createVehicle == freezed
          ? _value.createVehicle
          : createVehicle // ignore: cast_nullable_to_non_nullable
              as CreateVehicle,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VehicleFormCreateState
    with DiagnosticableTreeMixin
    implements _VehicleFormCreateState {
  const _$_VehicleFormCreateState(
      {required this.status,
      required this.createVehicle,
      required this.initial});

  @override
  final StateStatus<FailureExceptions, Vehicle> status;
  @override
  final CreateVehicle createVehicle;
  @override
  final bool initial;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleFormCreateState(status: $status, createVehicle: $createVehicle, initial: $initial)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleFormCreateState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createVehicle', createVehicle))
      ..add(DiagnosticsProperty('initial', initial));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleFormCreateState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.createVehicle, createVehicle) &&
            const DeepCollectionEquality().equals(other.initial, initial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createVehicle),
      const DeepCollectionEquality().hash(initial));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleFormCreateStateCopyWith<_$_VehicleFormCreateState> get copyWith =>
      __$$_VehicleFormCreateStateCopyWithImpl<_$_VehicleFormCreateState>(
          this, _$identity);
}

abstract class _VehicleFormCreateState implements VehicleFormCreateState {
  const factory _VehicleFormCreateState(
      {required final StateStatus<FailureExceptions, Vehicle> status,
      required final CreateVehicle createVehicle,
      required final bool initial}) = _$_VehicleFormCreateState;

  @override
  StateStatus<FailureExceptions, Vehicle> get status =>
      throw _privateConstructorUsedError;
  @override
  CreateVehicle get createVehicle => throw _privateConstructorUsedError;
  @override
  bool get initial => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleFormCreateStateCopyWith<_$_VehicleFormCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
