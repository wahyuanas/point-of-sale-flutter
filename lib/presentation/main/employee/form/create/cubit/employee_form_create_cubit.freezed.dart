// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_form_create_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeFormCreateState {
  StateStatus<FailureExceptions, Employees> get status =>
      throw _privateConstructorUsedError;
  CreateEmployee get createEmployee => throw _privateConstructorUsedError;
  bool get initial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeFormCreateStateCopyWith<EmployeeFormCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeFormCreateStateCopyWith<$Res> {
  factory $EmployeeFormCreateStateCopyWith(EmployeeFormCreateState value,
          $Res Function(EmployeeFormCreateState) then) =
      _$EmployeeFormCreateStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, Employees> status,
      CreateEmployee createEmployee,
      bool initial});

  $StateStatusCopyWith<FailureExceptions, Employees, $Res> get status;
  $CreateEmployeeCopyWith<$Res> get createEmployee;
}

/// @nodoc
class _$EmployeeFormCreateStateCopyWithImpl<$Res>
    implements $EmployeeFormCreateStateCopyWith<$Res> {
  _$EmployeeFormCreateStateCopyWithImpl(this._value, this._then);

  final EmployeeFormCreateState _value;
  // ignore: unused_field
  final $Res Function(EmployeeFormCreateState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? createEmployee = freezed,
    Object? initial = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Employees>,
      createEmployee: createEmployee == freezed
          ? _value.createEmployee
          : createEmployee // ignore: cast_nullable_to_non_nullable
              as CreateEmployee,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, Employees, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, Employees, $Res>(
        _value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $CreateEmployeeCopyWith<$Res> get createEmployee {
    return $CreateEmployeeCopyWith<$Res>(_value.createEmployee, (value) {
      return _then(_value.copyWith(createEmployee: value));
    });
  }
}

/// @nodoc
abstract class _$$_EmployeeFormCreateStateCopyWith<$Res>
    implements $EmployeeFormCreateStateCopyWith<$Res> {
  factory _$$_EmployeeFormCreateStateCopyWith(_$_EmployeeFormCreateState value,
          $Res Function(_$_EmployeeFormCreateState) then) =
      __$$_EmployeeFormCreateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, Employees> status,
      CreateEmployee createEmployee,
      bool initial});

  @override
  $StateStatusCopyWith<FailureExceptions, Employees, $Res> get status;
  @override
  $CreateEmployeeCopyWith<$Res> get createEmployee;
}

/// @nodoc
class __$$_EmployeeFormCreateStateCopyWithImpl<$Res>
    extends _$EmployeeFormCreateStateCopyWithImpl<$Res>
    implements _$$_EmployeeFormCreateStateCopyWith<$Res> {
  __$$_EmployeeFormCreateStateCopyWithImpl(_$_EmployeeFormCreateState _value,
      $Res Function(_$_EmployeeFormCreateState) _then)
      : super(_value, (v) => _then(v as _$_EmployeeFormCreateState));

  @override
  _$_EmployeeFormCreateState get _value =>
      super._value as _$_EmployeeFormCreateState;

  @override
  $Res call({
    Object? status = freezed,
    Object? createEmployee = freezed,
    Object? initial = freezed,
  }) {
    return _then(_$_EmployeeFormCreateState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Employees>,
      createEmployee: createEmployee == freezed
          ? _value.createEmployee
          : createEmployee // ignore: cast_nullable_to_non_nullable
              as CreateEmployee,
      initial: initial == freezed
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EmployeeFormCreateState
    with DiagnosticableTreeMixin
    implements _EmployeeFormCreateState {
  const _$_EmployeeFormCreateState(
      {required this.status,
      required this.createEmployee,
      required this.initial});

  @override
  final StateStatus<FailureExceptions, Employees> status;
  @override
  final CreateEmployee createEmployee;
  @override
  final bool initial;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeFormCreateState(status: $status, createEmployee: $createEmployee, initial: $initial)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeFormCreateState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createEmployee', createEmployee))
      ..add(DiagnosticsProperty('initial', initial));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeFormCreateState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.createEmployee, createEmployee) &&
            const DeepCollectionEquality().equals(other.initial, initial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createEmployee),
      const DeepCollectionEquality().hash(initial));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeFormCreateStateCopyWith<_$_EmployeeFormCreateState>
      get copyWith =>
          __$$_EmployeeFormCreateStateCopyWithImpl<_$_EmployeeFormCreateState>(
              this, _$identity);
}

abstract class _EmployeeFormCreateState implements EmployeeFormCreateState {
  const factory _EmployeeFormCreateState(
      {required final StateStatus<FailureExceptions, Employees> status,
      required final CreateEmployee createEmployee,
      required final bool initial}) = _$_EmployeeFormCreateState;

  @override
  StateStatus<FailureExceptions, Employees> get status =>
      throw _privateConstructorUsedError;
  @override
  CreateEmployee get createEmployee => throw _privateConstructorUsedError;
  @override
  bool get initial => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeFormCreateStateCopyWith<_$_EmployeeFormCreateState>
      get copyWith => throw _privateConstructorUsedError;
}
