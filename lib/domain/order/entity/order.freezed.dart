// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  int get vehicleId => throw _privateConstructorUsedError;
  List<int> get employeeId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get grandAmount => throw _privateConstructorUsedError;
  int get disc => throw _privateConstructorUsedError;
  int get paymentType => throw _privateConstructorUsedError;
  PaymentCardInfo get paymentCardInfo => throw _privateConstructorUsedError;
  int get charge => throw _privateConstructorUsedError;
  int get paidAmount => throw _privateConstructorUsedError;
  int get changeAmount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get tax => throw _privateConstructorUsedError;
  int get itemNumber => throw _privateConstructorUsedError;
  int get paidStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      String code,
      int customerId,
      int vehicleId,
      List<int> employeeId,
      DateTime date,
      int amount,
      int grandAmount,
      int disc,
      int paymentType,
      PaymentCardInfo paymentCardInfo,
      int charge,
      int paidAmount,
      int changeAmount,
      String description,
      int tax,
      int itemNumber,
      int paidStatus});

  $PaymentCardInfoCopyWith<$Res> get paymentCardInfo;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? customerId = freezed,
    Object? vehicleId = freezed,
    Object? employeeId = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? grandAmount = freezed,
    Object? disc = freezed,
    Object? paymentType = freezed,
    Object? paymentCardInfo = freezed,
    Object? charge = freezed,
    Object? paidAmount = freezed,
    Object? changeAmount = freezed,
    Object? description = freezed,
    Object? tax = freezed,
    Object? itemNumber = freezed,
    Object? paidStatus = freezed,
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
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleId: vehicleId == freezed
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      grandAmount: grandAmount == freezed
          ? _value.grandAmount
          : grandAmount // ignore: cast_nullable_to_non_nullable
              as int,
      disc: disc == freezed
          ? _value.disc
          : disc // ignore: cast_nullable_to_non_nullable
              as int,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCardInfo: paymentCardInfo == freezed
          ? _value.paymentCardInfo
          : paymentCardInfo // ignore: cast_nullable_to_non_nullable
              as PaymentCardInfo,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      changeAmount: changeAmount == freezed
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      itemNumber: itemNumber == freezed
          ? _value.itemNumber
          : itemNumber // ignore: cast_nullable_to_non_nullable
              as int,
      paidStatus: paidStatus == freezed
          ? _value.paidStatus
          : paidStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PaymentCardInfoCopyWith<$Res> get paymentCardInfo {
    return $PaymentCardInfoCopyWith<$Res>(_value.paymentCardInfo, (value) {
      return _then(_value.copyWith(paymentCardInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      String code,
      int customerId,
      int vehicleId,
      List<int> employeeId,
      DateTime date,
      int amount,
      int grandAmount,
      int disc,
      int paymentType,
      PaymentCardInfo paymentCardInfo,
      int charge,
      int paidAmount,
      int changeAmount,
      String description,
      int tax,
      int itemNumber,
      int paidStatus});

  @override
  $PaymentCardInfoCopyWith<$Res> get paymentCardInfo;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, (v) => _then(v as _$_Order));

  @override
  _$_Order get _value => super._value as _$_Order;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? customerId = freezed,
    Object? vehicleId = freezed,
    Object? employeeId = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? grandAmount = freezed,
    Object? disc = freezed,
    Object? paymentType = freezed,
    Object? paymentCardInfo = freezed,
    Object? charge = freezed,
    Object? paidAmount = freezed,
    Object? changeAmount = freezed,
    Object? description = freezed,
    Object? tax = freezed,
    Object? itemNumber = freezed,
    Object? paidStatus = freezed,
  }) {
    return _then(_$_Order(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleId: vehicleId == freezed
          ? _value.vehicleId
          : vehicleId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: employeeId == freezed
          ? _value._employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      grandAmount: grandAmount == freezed
          ? _value.grandAmount
          : grandAmount // ignore: cast_nullable_to_non_nullable
              as int,
      disc: disc == freezed
          ? _value.disc
          : disc // ignore: cast_nullable_to_non_nullable
              as int,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCardInfo: paymentCardInfo == freezed
          ? _value.paymentCardInfo
          : paymentCardInfo // ignore: cast_nullable_to_non_nullable
              as PaymentCardInfo,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as int,
      paidAmount: paidAmount == freezed
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      changeAmount: changeAmount == freezed
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      itemNumber: itemNumber == freezed
          ? _value.itemNumber
          : itemNumber // ignore: cast_nullable_to_non_nullable
              as int,
      paidStatus: paidStatus == freezed
          ? _value.paidStatus
          : paidStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order extends _Order {
  const _$_Order(
      {required this.id,
      required this.uuid,
      required this.code,
      required this.customerId,
      required this.vehicleId,
      required final List<int> employeeId,
      required this.date,
      required this.amount,
      required this.grandAmount,
      required this.disc,
      required this.paymentType,
      required this.paymentCardInfo,
      required this.charge,
      required this.paidAmount,
      required this.changeAmount,
      required this.description,
      required this.tax,
      required this.itemNumber,
      required this.paidStatus})
      : _employeeId = employeeId,
        super._();

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String code;
  @override
  final int customerId;
  @override
  final int vehicleId;
  final List<int> _employeeId;
  @override
  List<int> get employeeId {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employeeId);
  }

  @override
  final DateTime date;
  @override
  final int amount;
  @override
  final int grandAmount;
  @override
  final int disc;
  @override
  final int paymentType;
  @override
  final PaymentCardInfo paymentCardInfo;
  @override
  final int charge;
  @override
  final int paidAmount;
  @override
  final int changeAmount;
  @override
  final String description;
  @override
  final int tax;
  @override
  final int itemNumber;
  @override
  final int paidStatus;

  @override
  String toString() {
    return 'Order(id: $id, uuid: $uuid, code: $code, customerId: $customerId, vehicleId: $vehicleId, employeeId: $employeeId, date: $date, amount: $amount, grandAmount: $grandAmount, disc: $disc, paymentType: $paymentType, paymentCardInfo: $paymentCardInfo, charge: $charge, paidAmount: $paidAmount, changeAmount: $changeAmount, description: $description, tax: $tax, itemNumber: $itemNumber, paidStatus: $paidStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.vehicleId, vehicleId) &&
            const DeepCollectionEquality()
                .equals(other._employeeId, _employeeId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.grandAmount, grandAmount) &&
            const DeepCollectionEquality().equals(other.disc, disc) &&
            const DeepCollectionEquality()
                .equals(other.paymentType, paymentType) &&
            const DeepCollectionEquality()
                .equals(other.paymentCardInfo, paymentCardInfo) &&
            const DeepCollectionEquality().equals(other.charge, charge) &&
            const DeepCollectionEquality()
                .equals(other.paidAmount, paidAmount) &&
            const DeepCollectionEquality()
                .equals(other.changeAmount, changeAmount) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.tax, tax) &&
            const DeepCollectionEquality()
                .equals(other.itemNumber, itemNumber) &&
            const DeepCollectionEquality()
                .equals(other.paidStatus, paidStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(uuid),
        const DeepCollectionEquality().hash(code),
        const DeepCollectionEquality().hash(customerId),
        const DeepCollectionEquality().hash(vehicleId),
        const DeepCollectionEquality().hash(_employeeId),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(grandAmount),
        const DeepCollectionEquality().hash(disc),
        const DeepCollectionEquality().hash(paymentType),
        const DeepCollectionEquality().hash(paymentCardInfo),
        const DeepCollectionEquality().hash(charge),
        const DeepCollectionEquality().hash(paidAmount),
        const DeepCollectionEquality().hash(changeAmount),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(tax),
        const DeepCollectionEquality().hash(itemNumber),
        const DeepCollectionEquality().hash(paidStatus)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(this);
  }
}

abstract class _Order extends Order {
  const factory _Order(
      {required final int id,
      required final String uuid,
      required final String code,
      required final int customerId,
      required final int vehicleId,
      required final List<int> employeeId,
      required final DateTime date,
      required final int amount,
      required final int grandAmount,
      required final int disc,
      required final int paymentType,
      required final PaymentCardInfo paymentCardInfo,
      required final int charge,
      required final int paidAmount,
      required final int changeAmount,
      required final String description,
      required final int tax,
      required final int itemNumber,
      required final int paidStatus}) = _$_Order;
  const _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  int get customerId => throw _privateConstructorUsedError;
  @override
  int get vehicleId => throw _privateConstructorUsedError;
  @override
  List<int> get employeeId => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get grandAmount => throw _privateConstructorUsedError;
  @override
  int get disc => throw _privateConstructorUsedError;
  @override
  int get paymentType => throw _privateConstructorUsedError;
  @override
  PaymentCardInfo get paymentCardInfo => throw _privateConstructorUsedError;
  @override
  int get charge => throw _privateConstructorUsedError;
  @override
  int get paidAmount => throw _privateConstructorUsedError;
  @override
  int get changeAmount => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get tax => throw _privateConstructorUsedError;
  @override
  int get itemNumber => throw _privateConstructorUsedError;
  @override
  int get paidStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentCardInfo _$PaymentCardInfoFromJson(Map<String, dynamic> json) {
  return _PaymentCardInfo.fromJson(json);
}

/// @nodoc
mixin _$PaymentCardInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get numberRef => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;

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
      {int id, String name, String number, String numberRef, String remarks});
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
abstract class _$$_PaymentCardInfoCopyWith<$Res>
    implements $PaymentCardInfoCopyWith<$Res> {
  factory _$$_PaymentCardInfoCopyWith(
          _$_PaymentCardInfo value, $Res Function(_$_PaymentCardInfo) then) =
      __$$_PaymentCardInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String number, String numberRef, String remarks});
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
    Object? name = freezed,
    Object? number = freezed,
    Object? numberRef = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_$_PaymentCardInfo(
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
class _$_PaymentCardInfo extends _PaymentCardInfo {
  const _$_PaymentCardInfo(
      {required this.id,
      required this.name,
      required this.number,
      required this.numberRef,
      required this.remarks})
      : super._();

  factory _$_PaymentCardInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentCardInfoFromJson(json);

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
    return 'PaymentCardInfo(id: $id, name: $name, number: $number, numberRef: $numberRef, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentCardInfo &&
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
      required final String name,
      required final String number,
      required final String numberRef,
      required final String remarks}) = _$_PaymentCardInfo;
  const _PaymentCardInfo._() : super._();

  factory _PaymentCardInfo.fromJson(Map<String, dynamic> json) =
      _$_PaymentCardInfo.fromJson;

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
  _$$_PaymentCardInfoCopyWith<_$_PaymentCardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
