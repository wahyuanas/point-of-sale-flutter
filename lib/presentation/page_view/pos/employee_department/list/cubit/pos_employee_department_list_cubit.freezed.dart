// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_employee_department_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosEmployeeDepartmentListState {
  List<EmployeesDepartmentModel>? get employeesDepartments =>
      throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosEmployeeDepartmentListStateCopyWith<PosEmployeeDepartmentListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosEmployeeDepartmentListStateCopyWith<$Res> {
  factory $PosEmployeeDepartmentListStateCopyWith(
          PosEmployeeDepartmentListState value,
          $Res Function(PosEmployeeDepartmentListState) then) =
      _$PosEmployeeDepartmentListStateCopyWithImpl<$Res>;
  $Res call(
      {List<EmployeesDepartmentModel>? employeesDepartments, String? keyWord});
}

/// @nodoc
class _$PosEmployeeDepartmentListStateCopyWithImpl<$Res>
    implements $PosEmployeeDepartmentListStateCopyWith<$Res> {
  _$PosEmployeeDepartmentListStateCopyWithImpl(this._value, this._then);

  final PosEmployeeDepartmentListState _value;
  // ignore: unused_field
  final $Res Function(PosEmployeeDepartmentListState) _then;

  @override
  $Res call({
    Object? employeesDepartments = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      employeesDepartments: employeesDepartments == freezed
          ? _value.employeesDepartments
          : employeesDepartments // ignore: cast_nullable_to_non_nullable
              as List<EmployeesDepartmentModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosEmployeeDepartmentListStateCopyWith<$Res>
    implements $PosEmployeeDepartmentListStateCopyWith<$Res> {
  factory _$$_PosEmployeeDepartmentListStateCopyWith(
          _$_PosEmployeeDepartmentListState value,
          $Res Function(_$_PosEmployeeDepartmentListState) then) =
      __$$_PosEmployeeDepartmentListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<EmployeesDepartmentModel>? employeesDepartments, String? keyWord});
}

/// @nodoc
class __$$_PosEmployeeDepartmentListStateCopyWithImpl<$Res>
    extends _$PosEmployeeDepartmentListStateCopyWithImpl<$Res>
    implements _$$_PosEmployeeDepartmentListStateCopyWith<$Res> {
  __$$_PosEmployeeDepartmentListStateCopyWithImpl(
      _$_PosEmployeeDepartmentListState _value,
      $Res Function(_$_PosEmployeeDepartmentListState) _then)
      : super(_value, (v) => _then(v as _$_PosEmployeeDepartmentListState));

  @override
  _$_PosEmployeeDepartmentListState get _value =>
      super._value as _$_PosEmployeeDepartmentListState;

  @override
  $Res call({
    Object? employeesDepartments = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PosEmployeeDepartmentListState(
      employeesDepartments: employeesDepartments == freezed
          ? _value._employeesDepartments
          : employeesDepartments // ignore: cast_nullable_to_non_nullable
              as List<EmployeesDepartmentModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PosEmployeeDepartmentListState
    with DiagnosticableTreeMixin
    implements _PosEmployeeDepartmentListState {
  const _$_PosEmployeeDepartmentListState(
      {required final List<EmployeesDepartmentModel>? employeesDepartments,
      required this.keyWord})
      : _employeesDepartments = employeesDepartments;

  final List<EmployeesDepartmentModel>? _employeesDepartments;
  @override
  List<EmployeesDepartmentModel>? get employeesDepartments {
    final value = _employeesDepartments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEmployeeDepartmentListState(employeesDepartments: $employeesDepartments, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosEmployeeDepartmentListState'))
      ..add(DiagnosticsProperty('employeesDepartments', employeesDepartments))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosEmployeeDepartmentListState &&
            const DeepCollectionEquality()
                .equals(other._employeesDepartments, _employeesDepartments) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_employeesDepartments),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PosEmployeeDepartmentListStateCopyWith<_$_PosEmployeeDepartmentListState>
      get copyWith => __$$_PosEmployeeDepartmentListStateCopyWithImpl<
          _$_PosEmployeeDepartmentListState>(this, _$identity);
}

abstract class _PosEmployeeDepartmentListState
    implements PosEmployeeDepartmentListState {
  const factory _PosEmployeeDepartmentListState(
      {required final List<EmployeesDepartmentModel>? employeesDepartments,
      required final String? keyWord}) = _$_PosEmployeeDepartmentListState;

  @override
  List<EmployeesDepartmentModel>? get employeesDepartments =>
      throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosEmployeeDepartmentListStateCopyWith<_$_PosEmployeeDepartmentListState>
      get copyWith => throw _privateConstructorUsedError;
}
