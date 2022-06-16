// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pos _$PosFromJson(Map<String, dynamic> json) {
  return _Pos.fromJson(json);
}

/// @nodoc
mixin _$Pos {
  int? get sumPrice => throw _privateConstructorUsedError;
  Item get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosCopyWith<Pos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosCopyWith<$Res> {
  factory $PosCopyWith(Pos value, $Res Function(Pos) then) =
      _$PosCopyWithImpl<$Res>;
  $Res call({int? sumPrice, Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$PosCopyWithImpl<$Res> implements $PosCopyWith<$Res> {
  _$PosCopyWithImpl(this._value, this._then);

  final Pos _value;
  // ignore: unused_field
  final $Res Function(Pos) _then;

  @override
  $Res call({
    Object? sumPrice = freezed,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      sumPrice: sumPrice == freezed
          ? _value.sumPrice
          : sumPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_PosCopyWith<$Res> implements $PosCopyWith<$Res> {
  factory _$$_PosCopyWith(_$_Pos value, $Res Function(_$_Pos) then) =
      __$$_PosCopyWithImpl<$Res>;
  @override
  $Res call({int? sumPrice, Item item});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_PosCopyWithImpl<$Res> extends _$PosCopyWithImpl<$Res>
    implements _$$_PosCopyWith<$Res> {
  __$$_PosCopyWithImpl(_$_Pos _value, $Res Function(_$_Pos) _then)
      : super(_value, (v) => _then(v as _$_Pos));

  @override
  _$_Pos get _value => super._value as _$_Pos;

  @override
  $Res call({
    Object? sumPrice = freezed,
    Object? item = freezed,
  }) {
    return _then(_$_Pos(
      sumPrice: sumPrice == freezed
          ? _value.sumPrice
          : sumPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pos extends _Pos {
  const _$_Pos({required this.sumPrice, required this.item}) : super._();

  factory _$_Pos.fromJson(Map<String, dynamic> json) => _$$_PosFromJson(json);

  @override
  final int? sumPrice;
  @override
  final Item item;

  @override
  String toString() {
    return 'Pos(sumPrice: $sumPrice, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pos &&
            const DeepCollectionEquality().equals(other.sumPrice, sumPrice) &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sumPrice),
      const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_PosCopyWith<_$_Pos> get copyWith =>
      __$$_PosCopyWithImpl<_$_Pos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosToJson(this);
  }
}

abstract class _Pos extends Pos {
  const factory _Pos({required final int? sumPrice, required final Item item}) =
      _$_Pos;
  const _Pos._() : super._();

  factory _Pos.fromJson(Map<String, dynamic> json) = _$_Pos.fromJson;

  @override
  int? get sumPrice => throw _privateConstructorUsedError;
  @override
  Item get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PosCopyWith<_$_Pos> get copyWith => throw _privateConstructorUsedError;
}
