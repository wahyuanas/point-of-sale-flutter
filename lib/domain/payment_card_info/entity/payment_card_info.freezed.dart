// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_card_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentCardInfo _$PaymentCardInfoFromJson(Map<String, dynamic> json) {
  return _PaymentCardInfo.fromJson(json);
}

/// @nodoc
mixin _$PaymentCardInfo {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get numberRef => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCardInfoCopyWith<PaymentCardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardInfoCopyWith<$Res> {
  factory $PaymentCardInfoCopyWith(
          PaymentCardInfo value, $Res Function(PaymentCardInfo) then) =
      _$PaymentCardInfoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      String name,
      String number,
      String numberRef,
      String remarks,
      int accountId});
}

/// @nodoc
class _$PaymentCardInfoCopyWithImpl<$Res>
    implements $PaymentCardInfoCopyWith<$Res> {
  _$PaymentCardInfoCopyWithImpl(this._value, this._then);

  final PaymentCardInfo _value;
  // ignore: unused_field
  final $Res Function(PaymentCardInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? numberRef = freezed,
    Object? remarks = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      numberRef: numberRef == freezed
          ? _value.numberRef
          : numberRef // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PaymentCardInfoCopyWith<$Res>
    implements $PaymentCardInfoCopyWith<$Res> {
  factory _$$_PaymentCardInfoCopyWith(
          _$_PaymentCardInfo value, $Res Function(_$_PaymentCardInfo) then) =
      __$$_PaymentCardInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      String name,
      String number,
      String numberRef,
      String remarks,
      int accountId});
}

/// @nodoc
class __$$_PaymentCardInfoCopyWithImpl<$Res>
    extends _$PaymentCardInfoCopyWithImpl<$Res>
    implements _$$_PaymentCardInfoCopyWith<$Res> {
  __$$_PaymentCardInfoCopyWithImpl(
      _$_PaymentCardInfo _value, $Res Function(_$_PaymentCardInfo) _then)
      : super(_value, (v) => _then(v as _$_PaymentCardInfo));

  @override
  _$_PaymentCardInfo get _value => super._value as _$_PaymentCardInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? numberRef = freezed,
    Object? remarks = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_PaymentCardInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      numberRef: numberRef == freezed
          ? _value.numberRef
          : numberRef // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentCardInfo extends _PaymentCardInfo {
  const _$_PaymentCardInfo(
      {required this.id,
      required this.uuid,
      required this.name,
      required this.number,
      required this.numberRef,
      required this.remarks,
      required this.accountId})
      : super._();

  factory _$_PaymentCardInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentCardInfoFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String name;
  @override
  final String number;
  @override
  final String numberRef;
  @override
  final String remarks;
  @override
  final int accountId;

  @override
  String toString() {
    return 'PaymentCardInfo(id: $id, uuid: $uuid, name: $name, number: $number, numberRef: $numberRef, remarks: $remarks, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentCardInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.numberRef, numberRef) &&
            const DeepCollectionEquality().equals(other.remarks, remarks) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(numberRef),
      const DeepCollectionEquality().hash(remarks),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$$_PaymentCardInfoCopyWith<_$_PaymentCardInfo> get copyWith =>
      __$$_PaymentCardInfoCopyWithImpl<_$_PaymentCardInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentCardInfoToJson(this);
  }
}

abstract class _PaymentCardInfo extends PaymentCardInfo {
  const factory _PaymentCardInfo(
      {required final int id,
      required final String uuid,
      required final String name,
      required final String number,
      required final String numberRef,
      required final String remarks,
      required final int accountId}) = _$_PaymentCardInfo;
  const _PaymentCardInfo._() : super._();

  factory _PaymentCardInfo.fromJson(Map<String, dynamic> json) =
      _$_PaymentCardInfo.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get number => throw _privateConstructorUsedError;
  @override
  String get numberRef => throw _privateConstructorUsedError;
  @override
  String get remarks => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCardInfoCopyWith<_$_PaymentCardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
