// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_form_create_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogFormCreateState {
  StateStatus<FailureExceptions, Item> get status =>
      throw _privateConstructorUsedError;
  CreateCatalogItem get createCatalogItem => throw _privateConstructorUsedError;
  bool get failOrUnit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogFormCreateStateCopyWith<CatalogFormCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogFormCreateStateCopyWith<$Res> {
  factory $CatalogFormCreateStateCopyWith(CatalogFormCreateState value,
          $Res Function(CatalogFormCreateState) then) =
      _$CatalogFormCreateStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, Item> status,
      CreateCatalogItem createCatalogItem,
      bool failOrUnit});

  $StateStatusCopyWith<FailureExceptions, Item, $Res> get status;
  $CreateCatalogItemCopyWith<$Res> get createCatalogItem;
}

/// @nodoc
class _$CatalogFormCreateStateCopyWithImpl<$Res>
    implements $CatalogFormCreateStateCopyWith<$Res> {
  _$CatalogFormCreateStateCopyWithImpl(this._value, this._then);

  final CatalogFormCreateState _value;
  // ignore: unused_field
  final $Res Function(CatalogFormCreateState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? createCatalogItem = freezed,
    Object? failOrUnit = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Item>,
      createCatalogItem: createCatalogItem == freezed
          ? _value.createCatalogItem
          : createCatalogItem // ignore: cast_nullable_to_non_nullable
              as CreateCatalogItem,
      failOrUnit: failOrUnit == freezed
          ? _value.failOrUnit
          : failOrUnit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, Item, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, Item, $Res>(_value.status,
        (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $CreateCatalogItemCopyWith<$Res> get createCatalogItem {
    return $CreateCatalogItemCopyWith<$Res>(_value.createCatalogItem, (value) {
      return _then(_value.copyWith(createCatalogItem: value));
    });
  }
}

/// @nodoc
abstract class _$$_CatalogFormCreateStateCopyWith<$Res>
    implements $CatalogFormCreateStateCopyWith<$Res> {
  factory _$$_CatalogFormCreateStateCopyWith(_$_CatalogFormCreateState value,
          $Res Function(_$_CatalogFormCreateState) then) =
      __$$_CatalogFormCreateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, Item> status,
      CreateCatalogItem createCatalogItem,
      bool failOrUnit});

  @override
  $StateStatusCopyWith<FailureExceptions, Item, $Res> get status;
  @override
  $CreateCatalogItemCopyWith<$Res> get createCatalogItem;
}

/// @nodoc
class __$$_CatalogFormCreateStateCopyWithImpl<$Res>
    extends _$CatalogFormCreateStateCopyWithImpl<$Res>
    implements _$$_CatalogFormCreateStateCopyWith<$Res> {
  __$$_CatalogFormCreateStateCopyWithImpl(_$_CatalogFormCreateState _value,
      $Res Function(_$_CatalogFormCreateState) _then)
      : super(_value, (v) => _then(v as _$_CatalogFormCreateState));

  @override
  _$_CatalogFormCreateState get _value =>
      super._value as _$_CatalogFormCreateState;

  @override
  $Res call({
    Object? status = freezed,
    Object? createCatalogItem = freezed,
    Object? failOrUnit = freezed,
  }) {
    return _then(_$_CatalogFormCreateState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Item>,
      createCatalogItem: createCatalogItem == freezed
          ? _value.createCatalogItem
          : createCatalogItem // ignore: cast_nullable_to_non_nullable
              as CreateCatalogItem,
      failOrUnit: failOrUnit == freezed
          ? _value.failOrUnit
          : failOrUnit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CatalogFormCreateState
    with DiagnosticableTreeMixin
    implements _CatalogFormCreateState {
  const _$_CatalogFormCreateState(
      {required this.status,
      required this.createCatalogItem,
      required this.failOrUnit});

  @override
  final StateStatus<FailureExceptions, Item> status;
  @override
  final CreateCatalogItem createCatalogItem;
  @override
  final bool failOrUnit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CatalogFormCreateState(status: $status, createCatalogItem: $createCatalogItem, failOrUnit: $failOrUnit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CatalogFormCreateState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createCatalogItem', createCatalogItem))
      ..add(DiagnosticsProperty('failOrUnit', failOrUnit));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogFormCreateState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.createCatalogItem, createCatalogItem) &&
            const DeepCollectionEquality()
                .equals(other.failOrUnit, failOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createCatalogItem),
      const DeepCollectionEquality().hash(failOrUnit));

  @JsonKey(ignore: true)
  @override
  _$$_CatalogFormCreateStateCopyWith<_$_CatalogFormCreateState> get copyWith =>
      __$$_CatalogFormCreateStateCopyWithImpl<_$_CatalogFormCreateState>(
          this, _$identity);
}

abstract class _CatalogFormCreateState implements CatalogFormCreateState {
  const factory _CatalogFormCreateState(
      {required final StateStatus<FailureExceptions, Item> status,
      required final CreateCatalogItem createCatalogItem,
      required final bool failOrUnit}) = _$_CatalogFormCreateState;

  @override
  StateStatus<FailureExceptions, Item> get status =>
      throw _privateConstructorUsedError;
  @override
  CreateCatalogItem get createCatalogItem => throw _privateConstructorUsedError;
  @override
  bool get failOrUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogFormCreateStateCopyWith<_$_CatalogFormCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
