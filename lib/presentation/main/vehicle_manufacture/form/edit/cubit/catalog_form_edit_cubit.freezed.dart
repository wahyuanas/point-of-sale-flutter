// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_form_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogFormEditState {
  StateStatus<FailureExceptions, Item> get status =>
      throw _privateConstructorUsedError;
  EditCatalogItem get editCatalogItem => throw _privateConstructorUsedError;
  bool get failOrUnit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogFormEditStateCopyWith<CatalogFormEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogFormEditStateCopyWith<$Res> {
  factory $CatalogFormEditStateCopyWith(CatalogFormEditState value,
          $Res Function(CatalogFormEditState) then) =
      _$CatalogFormEditStateCopyWithImpl<$Res>;
  $Res call(
      {StateStatus<FailureExceptions, Item> status,
      EditCatalogItem editCatalogItem,
      bool failOrUnit});

  $StateStatusCopyWith<FailureExceptions, Item, $Res> get status;
  $EditCatalogItemCopyWith<$Res> get editCatalogItem;
}

/// @nodoc
class _$CatalogFormEditStateCopyWithImpl<$Res>
    implements $CatalogFormEditStateCopyWith<$Res> {
  _$CatalogFormEditStateCopyWithImpl(this._value, this._then);

  final CatalogFormEditState _value;
  // ignore: unused_field
  final $Res Function(CatalogFormEditState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? editCatalogItem = freezed,
    Object? failOrUnit = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Item>,
      editCatalogItem: editCatalogItem == freezed
          ? _value.editCatalogItem
          : editCatalogItem // ignore: cast_nullable_to_non_nullable
              as EditCatalogItem,
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
  $EditCatalogItemCopyWith<$Res> get editCatalogItem {
    return $EditCatalogItemCopyWith<$Res>(_value.editCatalogItem, (value) {
      return _then(_value.copyWith(editCatalogItem: value));
    });
  }
}

/// @nodoc
abstract class _$$_CatalogFormEditStateCopyWith<$Res>
    implements $CatalogFormEditStateCopyWith<$Res> {
  factory _$$_CatalogFormEditStateCopyWith(_$_CatalogFormEditState value,
          $Res Function(_$_CatalogFormEditState) then) =
      __$$_CatalogFormEditStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StateStatus<FailureExceptions, Item> status,
      EditCatalogItem editCatalogItem,
      bool failOrUnit});

  @override
  $StateStatusCopyWith<FailureExceptions, Item, $Res> get status;
  @override
  $EditCatalogItemCopyWith<$Res> get editCatalogItem;
}

/// @nodoc
class __$$_CatalogFormEditStateCopyWithImpl<$Res>
    extends _$CatalogFormEditStateCopyWithImpl<$Res>
    implements _$$_CatalogFormEditStateCopyWith<$Res> {
  __$$_CatalogFormEditStateCopyWithImpl(_$_CatalogFormEditState _value,
      $Res Function(_$_CatalogFormEditState) _then)
      : super(_value, (v) => _then(v as _$_CatalogFormEditState));

  @override
  _$_CatalogFormEditState get _value => super._value as _$_CatalogFormEditState;

  @override
  $Res call({
    Object? status = freezed,
    Object? editCatalogItem = freezed,
    Object? failOrUnit = freezed,
  }) {
    return _then(_$_CatalogFormEditState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, Item>,
      editCatalogItem: editCatalogItem == freezed
          ? _value.editCatalogItem
          : editCatalogItem // ignore: cast_nullable_to_non_nullable
              as EditCatalogItem,
      failOrUnit: failOrUnit == freezed
          ? _value.failOrUnit
          : failOrUnit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CatalogFormEditState implements _CatalogFormEditState {
  const _$_CatalogFormEditState(
      {required this.status,
      required this.editCatalogItem,
      required this.failOrUnit});

  @override
  final StateStatus<FailureExceptions, Item> status;
  @override
  final EditCatalogItem editCatalogItem;
  @override
  final bool failOrUnit;

  @override
  String toString() {
    return 'CatalogFormEditState(status: $status, editCatalogItem: $editCatalogItem, failOrUnit: $failOrUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogFormEditState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.editCatalogItem, editCatalogItem) &&
            const DeepCollectionEquality()
                .equals(other.failOrUnit, failOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(editCatalogItem),
      const DeepCollectionEquality().hash(failOrUnit));

  @JsonKey(ignore: true)
  @override
  _$$_CatalogFormEditStateCopyWith<_$_CatalogFormEditState> get copyWith =>
      __$$_CatalogFormEditStateCopyWithImpl<_$_CatalogFormEditState>(
          this, _$identity);
}

abstract class _CatalogFormEditState implements CatalogFormEditState {
  const factory _CatalogFormEditState(
      {required final StateStatus<FailureExceptions, Item> status,
      required final EditCatalogItem editCatalogItem,
      required final bool failOrUnit}) = _$_CatalogFormEditState;

  @override
  StateStatus<FailureExceptions, Item> get status =>
      throw _privateConstructorUsedError;
  @override
  EditCatalogItem get editCatalogItem => throw _privateConstructorUsedError;
  @override
  bool get failOrUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogFormEditStateCopyWith<_$_CatalogFormEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
