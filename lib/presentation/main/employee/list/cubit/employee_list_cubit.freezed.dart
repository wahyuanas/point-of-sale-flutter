// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeListState _$EmployeeListStateFromJson(Map<String, dynamic> json) {
  return _EmployeeListState.fromJson(json);
}

/// @nodoc
mixin _$EmployeeListState {
  List<Employees>? get employees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeListStateCopyWith<EmployeeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeListStateCopyWith<$Res> {
  factory $EmployeeListStateCopyWith(
          EmployeeListState value, $Res Function(EmployeeListState) then) =
      _$EmployeeListStateCopyWithImpl<$Res>;
  $Res call({List<Employees>? employees});
}

/// @nodoc
class _$EmployeeListStateCopyWithImpl<$Res>
    implements $EmployeeListStateCopyWith<$Res> {
  _$EmployeeListStateCopyWithImpl(this._value, this._then);

  final EmployeeListState _value;
  // ignore: unused_field
  final $Res Function(EmployeeListState) _then;

  @override
  $Res call({
    Object? employees = freezed,
  }) {
    return _then(_value.copyWith(
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employees>?,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeListStateCopyWith<$Res>
    implements $EmployeeListStateCopyWith<$Res> {
  factory _$$_EmployeeListStateCopyWith(_$_EmployeeListState value,
          $Res Function(_$_EmployeeListState) then) =
      __$$_EmployeeListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Employees>? employees});
}

/// @nodoc
class __$$_EmployeeListStateCopyWithImpl<$Res>
    extends _$EmployeeListStateCopyWithImpl<$Res>
    implements _$$_EmployeeListStateCopyWith<$Res> {
  __$$_EmployeeListStateCopyWithImpl(
      _$_EmployeeListState _value, $Res Function(_$_EmployeeListState) _then)
      : super(_value, (v) => _then(v as _$_EmployeeListState));

  @override
  _$_EmployeeListState get _value => super._value as _$_EmployeeListState;

  @override
  $Res call({
    Object? employees = freezed,
  }) {
    return _then(_$_EmployeeListState(
      employees: employees == freezed
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employees>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeListState
    with DiagnosticableTreeMixin
    implements _EmployeeListState {
  const _$_EmployeeListState({required final List<Employees>? employees})
      : _employees = employees;

  factory _$_EmployeeListState.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeListStateFromJson(json);

  final List<Employees>? _employees;
  @override
  List<Employees>? get employees {
    final value = _employees;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeListState(employees: $employees)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeListState'))
      ..add(DiagnosticsProperty('employees', employees));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeListState &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeListStateCopyWith<_$_EmployeeListState> get copyWith =>
      __$$_EmployeeListStateCopyWithImpl<_$_EmployeeListState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeListStateToJson(this);
  }
}

abstract class _EmployeeListState implements EmployeeListState {
  const factory _EmployeeListState(
      {required final List<Employees>? employees}) = _$_EmployeeListState;

  factory _EmployeeListState.fromJson(Map<String, dynamic> json) =
      _$_EmployeeListState.fromJson;

  @override
  List<Employees>? get employees => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeListStateCopyWith<_$_EmployeeListState> get copyWith =>
      throw _privateConstructorUsedError;
}
