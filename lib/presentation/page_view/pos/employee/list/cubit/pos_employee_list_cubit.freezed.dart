// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos_employee_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosEmployeeListState {
  List<EmployeesModel>? get employees => throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosEmployeeListStateCopyWith<PosEmployeeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosEmployeeListStateCopyWith<$Res> {
  factory $PosEmployeeListStateCopyWith(PosEmployeeListState value,
          $Res Function(PosEmployeeListState) then) =
      _$PosEmployeeListStateCopyWithImpl<$Res>;
  $Res call({List<EmployeesModel>? employees, String? keyWord});
}

/// @nodoc
class _$PosEmployeeListStateCopyWithImpl<$Res>
    implements $PosEmployeeListStateCopyWith<$Res> {
  _$PosEmployeeListStateCopyWithImpl(this._value, this._then);

  final PosEmployeeListState _value;
  // ignore: unused_field
  final $Res Function(PosEmployeeListState) _then;

  @override
  $Res call({
    Object? employees = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeesModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PosEmployeeListStateCopyWith<$Res>
    implements $PosEmployeeListStateCopyWith<$Res> {
  factory _$$_PosEmployeeListStateCopyWith(_$_PosEmployeeListState value,
          $Res Function(_$_PosEmployeeListState) then) =
      __$$_PosEmployeeListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<EmployeesModel>? employees, String? keyWord});
}

/// @nodoc
class __$$_PosEmployeeListStateCopyWithImpl<$Res>
    extends _$PosEmployeeListStateCopyWithImpl<$Res>
    implements _$$_PosEmployeeListStateCopyWith<$Res> {
  __$$_PosEmployeeListStateCopyWithImpl(_$_PosEmployeeListState _value,
      $Res Function(_$_PosEmployeeListState) _then)
      : super(_value, (v) => _then(v as _$_PosEmployeeListState));

  @override
  _$_PosEmployeeListState get _value => super._value as _$_PosEmployeeListState;

  @override
  $Res call({
    Object? employees = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PosEmployeeListState(
      employees: employees == freezed
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeesModel>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PosEmployeeListState
    with DiagnosticableTreeMixin
    implements _PosEmployeeListState {
  const _$_PosEmployeeListState(
      {required final List<EmployeesModel>? employees, required this.keyWord})
      : _employees = employees;

  final List<EmployeesModel>? _employees;
  @override
  List<EmployeesModel>? get employees {
    final value = _employees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PosEmployeeListState(employees: $employees, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PosEmployeeListState'))
      ..add(DiagnosticsProperty('employees', employees))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PosEmployeeListState &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_employees),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PosEmployeeListStateCopyWith<_$_PosEmployeeListState> get copyWith =>
      __$$_PosEmployeeListStateCopyWithImpl<_$_PosEmployeeListState>(
          this, _$identity);
}

abstract class _PosEmployeeListState implements PosEmployeeListState {
  const factory _PosEmployeeListState(
      {required final List<EmployeesModel>? employees,
      required final String? keyWord}) = _$_PosEmployeeListState;

  @override
  List<EmployeesModel>? get employees => throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosEmployeeListStateCopyWith<_$_PosEmployeeListState> get copyWith =>
      throw _privateConstructorUsedError;
}
