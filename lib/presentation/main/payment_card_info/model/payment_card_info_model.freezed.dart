// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_card_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentCardInfoModel _$PaymentCardInfoModelFromJson(Map<String, dynamic> json) {
  return _PaymentCardInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentCardInfoModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get numberRef => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCardInfoModelCopyWith<PaymentCardInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardInfoModelCopyWith<$Res> {
  factory $PaymentCardInfoModelCopyWith(PaymentCardInfoModel value,
          $Res Function(PaymentCardInfoModel) then) =
      _$PaymentCardInfoModelCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String number, String numberRef, String remarks});
}

/// @nodoc
class _$PaymentCardInfoModelCopyWithImpl<$Res>
    implements $PaymentCardInfoModelCopyWith<$Res> {
  _$PaymentCardInfoModelCopyWithImpl(this._value, this._then);

  final PaymentCardInfoModel _value;
  // ignore: unused_field
  final $Res Function(PaymentCardInfoModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? numberRef = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
abstract class _$$_PaymentCardInfoModelCopyWith<$Res>
    implements $PaymentCardInfoModelCopyWith<$Res> {
  factory _$$_PaymentCardInfoModelCopyWith(_$_PaymentCardInfoModel value,
          $Res Function(_$_PaymentCardInfoModel) then) =
      __$$_PaymentCardInfoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String number, String numberRef, String remarks});
}

/// @nodoc
class __$$_PaymentCardInfoModelCopyWithImpl<$Res>
    extends _$PaymentCardInfoModelCopyWithImpl<$Res>
    implements _$$_PaymentCardInfoModelCopyWith<$Res> {
  __$$_PaymentCardInfoModelCopyWithImpl(_$_PaymentCardInfoModel _value,
      $Res Function(_$_PaymentCardInfoModel) _then)
      : super(_value, (v) => _then(v as _$_PaymentCardInfoModel));

  @override
  _$_PaymentCardInfoModel get _value => super._value as _$_PaymentCardInfoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? numberRef = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_$_PaymentCardInfoModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentCardInfoModel extends _PaymentCardInfoModel {
  const _$_PaymentCardInfoModel(
      {required this.id,
      required this.name,
      required this.number,
      required this.numberRef,
      required this.remarks})
      : super._();

  factory _$_PaymentCardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentCardInfoModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String number;
  @override
  final String numberRef;
  @override
  final String remarks;

  @override
  String toString() {
    return 'PaymentCardInfoModel(id: $id, name: $name, number: $number, numberRef: $numberRef, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentCardInfoModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.numberRef, numberRef) &&
            const DeepCollectionEquality().equals(other.remarks, remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(numberRef),
      const DeepCollectionEquality().hash(remarks));

  @JsonKey(ignore: true)
  @override
  _$$_PaymentCardInfoModelCopyWith<_$_PaymentCardInfoModel> get copyWith =>
      __$$_PaymentCardInfoModelCopyWithImpl<_$_PaymentCardInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentCardInfoModelToJson(this);
  }
}

abstract class _PaymentCardInfoModel extends PaymentCardInfoModel {
  const factory _PaymentCardInfoModel(
      {required final int id,
      required final String name,
      required final String number,
      required final String numberRef,
      required final String remarks}) = _$_PaymentCardInfoModel;
  const _PaymentCardInfoModel._() : super._();

  factory _PaymentCardInfoModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentCardInfoModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get number => throw _privateConstructorUsedError;
  @override
  String get numberRef => throw _privateConstructorUsedError;
  @override
  String get remarks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentCardInfoModelCopyWith<_$_PaymentCardInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
