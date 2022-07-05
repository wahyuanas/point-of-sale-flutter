// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_department_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeDepartmentListState _$EmployeeDepartmentListStateFromJson(
    Map<String, dynamic> json) {
  return _EmployeeDepartmentListState.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDepartmentListState {
  List<EmployeesDepartment>? get employeesDepartments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDepartmentListStateCopyWith<EmployeeDepartmentListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDepartmentListStateCopyWith<$Res> {
  factory $EmployeeDepartmentListStateCopyWith(
          EmployeeDepartmentListState value,
          $Res Function(EmployeeDepartmentListState) then) =
      _$EmployeeDepartmentListStateCopyWithImpl<$Res>;
  $Res call({List<EmployeesDepartment>? employeesDepartments});
}

/// @nodoc
class _$EmployeeDepartmentListStateCopyWithImpl<$Res>
    implements $EmployeeDepartmentListStateCopyWith<$Res> {
  _$EmployeeDepartmentListStateCopyWithImpl(this._value, this._then);

  final EmployeeDepartmentListState _value;
  // ignore: unused_field
  final $Res Function(EmployeeDepartmentListState) _then;

  @override
  $Res call({
    Object? employeesDepartments = freezed,
  }) {
    return _then(_value.copyWith(
      employeesDepartments: employeesDepartments == freezed
          ? _value.employeesDepartments
          : employeesDepartments // ignore: cast_nullable_to_non_nullable
              as List<EmployeesDepartment>?,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeDepartmentListStateCopyWith<$Res>
    implements $EmployeeDepartmentListStateCopyWith<$Res> {
  factory _$$_EmployeeDepartmentListStateCopyWith(
          _$_EmployeeDepartmentListState value,
          $Res Function(_$_EmployeeDepartmentListState) then) =
      __$$_EmployeeDepartmentListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<EmployeesDepartment>? employeesDepartments});
}

/// @nodoc
class __$$_EmployeeDepartmentListStateCopyWithImpl<$Res>
    extends _$EmployeeDepartmentListStateCopyWithImpl<$Res>
    implements _$$_EmployeeDepartmentListStateCopyWith<$Res> {
  __$$_EmployeeDepartmentListStateCopyWithImpl(
      _$_EmployeeDepartmentListState _value,
      $Res Function(_$_EmployeeDepartmentListState) _then)
      : super(_value, (v) => _then(v as _$_EmployeeDepartmentListState));

  @override
  _$_EmployeeDepartmentListState get _value =>
      super._value as _$_EmployeeDepartmentListState;

  @override
  $Res call({
    Object? employeesDepartments = freezed,
  }) {
    return _then(_$_EmployeeDepartmentListState(
      employeesDepartments: employeesDepartments == freezed
          ? _value._employeesDepartments
          : employeesDepartments // ignore: cast_nullable_to_non_nullable
              as List<EmployeesDepartment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeDepartmentListState
    with DiagnosticableTreeMixin
    implements _EmployeeDepartmentListState {
  const _$_EmployeeDepartmentListState(
      {required final List<EmployeesDepartment>? employeesDepartments})
      : _employeesDepartments = employeesDepartments;

  factory _$_EmployeeDepartmentListState.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeDepartmentListStateFromJson(json);

  final List<EmployeesDepartment>? _employeesDepartments;
  @override
  List<EmployeesDepartment>? get employeesDepartments {
    final value = _employeesDepartments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeDepartmentListState(employeesDepartments: $employeesDepartments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeDepartmentListState'))
      ..add(DiagnosticsProperty('employeesDepartments', employeesDepartments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeDepartmentListState &&
            const DeepCollectionEquality()
                .equals(other._employeesDepartments, _employeesDepartments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_employeesDepartments));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeDepartmentListStateCopyWith<_$_EmployeeDepartmentListState>
      get copyWith => __$$_EmployeeDepartmentListStateCopyWithImpl<
          _$_EmployeeDepartmentListState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeDepartmentListStateToJson(this);
  }
}

abstract class _EmployeeDepartmentListState
    implements EmployeeDepartmentListState {
  const factory _EmployeeDepartmentListState(
          {required final List<EmployeesDepartment>? employeesDepartments}) =
      _$_EmployeeDepartmentListState;

  factory _EmployeeDepartmentListState.fromJson(Map<String, dynamic> json) =
      _$_EmployeeDepartmentListState.fromJson;

  @override
  List<EmployeesDepartment>? get employeesDepartments =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeDepartmentListStateCopyWith<_$_EmployeeDepartmentListState>
      get copyWith => throw _privateConstructorUsedError;
}
