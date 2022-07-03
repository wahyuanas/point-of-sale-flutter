// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_type_form_create_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleTypeFormCreateState {
  StateStatus<FailureExceptions, VehicleType> get status =>
      throw _privateConstructorUsedError;
  CreateVehicleType get createVehicleType => throw _privateConstructorUsedError;
  bool get initial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleTypeFormCreateStateCopyWith<VehicleTypeFormCreateState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeFormCreateStateCopyWith<$Res> {
  factory $VehicleTypeFormCreateStateCopyWith(VehicleTypeFormCreateState value,
          $Res Function(VehicleTypeFormCreateState) then) =
      _$VehicleTypeFormCreateStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, VehicleType> status,
      CreateVehicleType createVehicleType,
      bool initial});

  $StateStatusCopyWith<FailureExceptions, VehicleType, $Res> get status;
  $CreateVehicleTypeCopyWith<$Res> get createVehicleType;
}

/// @nodoc
class _$VehicleTypeFormCreateStateCopyWithImpl<$Res>
    implements $VehicleTypeFormCreateStateCopyWith<$Res> {
  _$VehicleTypeFormCreateStateCopyWithImpl(this._value, this._then);

  final VehicleTypeFormCreateState _value;
  // ignore: unused_field
  final $Res Function(VehicleTypeFormCreateState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? createVehicleType = freezed,
    Object? initial = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, VehicleType>,
      createVehicleType: createVehicleType == freezed
          ? _value.createVehicleType
          : createVehicleType // ignore: cast_nullable_to_non_nullable
              as CreateVehicleType,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, VehicleType, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, VehicleType, $Res>(
        _value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $CreateVehicleTypeCopyWith<$Res> get createVehicleType {
    return $CreateVehicleTypeCopyWith<$Res>(_value.createVehicleType, (value) {
      return _then(_value.copyWith(createVehicleType: value));
    });
  }
}

/// @nodoc
abstract class _$$_VehicleTypeFormCreateStateCopyWith<$Res>
    implements $VehicleTypeFormCreateStateCopyWith<$Res> {
  factory _$$_VehicleTypeFormCreateStateCopyWith(
          _$_VehicleTypeFormCreateState value,
          $Res Function(_$_VehicleTypeFormCreateState) then) =
      __$$_VehicleTypeFormCreateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, VehicleType> status,
      CreateVehicleType createVehicleType,
      bool initial});

  @override
  $StateStatusCopyWith<FailureExceptions, VehicleType, $Res> get status;
  @override
  $CreateVehicleTypeCopyWith<$Res> get createVehicleType;
}

/// @nodoc
class __$$_VehicleTypeFormCreateStateCopyWithImpl<$Res>
    extends _$VehicleTypeFormCreateStateCopyWithImpl<$Res>
    implements _$$_VehicleTypeFormCreateStateCopyWith<$Res> {
  __$$_VehicleTypeFormCreateStateCopyWithImpl(
      _$_VehicleTypeFormCreateState _value,
      $Res Function(_$_VehicleTypeFormCreateState) _then)
      : super(_value, (v) => _then(v as _$_VehicleTypeFormCreateState));

  @override
  _$_VehicleTypeFormCreateState get _value =>
      super._value as _$_VehicleTypeFormCreateState;

  @override
  $Res call({
    Object? status = freezed,
    Object? createVehicleType = freezed,
    Object? initial = freezed,
  }) {
    return _then(_$_VehicleTypeFormCreateState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, VehicleType>,
      createVehicleType: createVehicleType == freezed
          ? _value.createVehicleType
          : createVehicleType // ignore: cast_nullable_to_non_nullable
              as CreateVehicleType,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VehicleTypeFormCreateState
    with DiagnosticableTreeMixin
    implements _VehicleTypeFormCreateState {
  const _$_VehicleTypeFormCreateState(
      {required this.status,
      required this.createVehicleType,
      required this.initial});

  @override
  final StateStatus<FailureExceptions, VehicleType> status;
  @override
  final CreateVehicleType createVehicleType;
  @override
  final bool initial;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleTypeFormCreateState(status: $status, createVehicleType: $createVehicleType, initial: $initial)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleTypeFormCreateState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createVehicleType', createVehicleType))
      ..add(DiagnosticsProperty('initial', initial));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleTypeFormCreateState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.createVehicleType, createVehicleType) &&
            const DeepCollectionEquality().equals(other.initial, initial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createVehicleType),
      const DeepCollectionEquality().hash(initial));

  @JsonKey(ignore: true)
  @override
  _$$_VehicleTypeFormCreateStateCopyWith<_$_VehicleTypeFormCreateState>
      get copyWith => __$$_VehicleTypeFormCreateStateCopyWithImpl<
          _$_VehicleTypeFormCreateState>(this, _$identity);
}

abstract class _VehicleTypeFormCreateState
    implements VehicleTypeFormCreateState {
  const factory _VehicleTypeFormCreateState(
      {required final StateStatus<FailureExceptions, VehicleType> status,
      required final CreateVehicleType createVehicleType,
      required final bool initial}) = _$_VehicleTypeFormCreateState;

  @override
  StateStatus<FailureExceptions, VehicleType> get status =>
      throw _privateConstructorUsedError;
  @override
  CreateVehicleType get createVehicleType => throw _privateConstructorUsedError;
  @override
  bool get initial => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleTypeFormCreateStateCopyWith<_$_VehicleTypeFormCreateState>
      get copyWith => throw _privateConstructorUsedError;
}
