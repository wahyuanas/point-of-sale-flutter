// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  CustomerModel? get customer => throw _privateConstructorUsedError;
  VehicleModel? get vehicle => throw _privateConstructorUsedError;
  List<EmployeesModel>? get employee => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get grandAmount => throw _privateConstructorUsedError;
  double? get disc => throw _privateConstructorUsedError;
  int get paymentType => throw _privateConstructorUsedError;
  PaymentCardInfoModel? get paymentCardInfo =>
      throw _privateConstructorUsedError;
  int? get charge => throw _privateConstructorUsedError;
  int get paidAmount => throw _privateConstructorUsedError;
  int get changeAmount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get tax => throw _privateConstructorUsedError;
  int get itemNumber => throw _privateConstructorUsedError;
  int get paidStatus => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String uuid,
      String code,
      CustomerModel? customer,
      VehicleModel? vehicle,
      List<EmployeesModel>? employee,
      DateTime date,
      int amount,
      int grandAmount,
      double? disc,
      int paymentType,
      PaymentCardInfoModel? paymentCardInfo,
      int? charge,
      int paidAmount,
      int changeAmount,
      String? description,
      int? tax,
      int itemNumber,
      int paidStatus,
      int accountId});

  $CustomerModelCopyWith<$Res>? get customer;
  $VehicleModelCopyWith<$Res>? get vehicle;
  $PaymentCardInfoModelCopyWith<$Res>? get paymentCardInfo;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  final OrderModel _value;
  // ignore: unused_field
  final $Res Function(OrderModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? customer = freezed,
    Object? vehicle = freezed,
    Object? employee = freezed,
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
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
      vehicle: vehicle == freezed
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleModel?,
      employee: employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as List<EmployeesModel>?,
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
              as double?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCardInfo: paymentCardInfo == freezed
          ? _value.paymentCardInfo
          : paymentCardInfo // ignore: cast_nullable_to_non_nullable
              as PaymentCardInfoModel?,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int?,
      itemNumber: itemNumber == freezed
          ? _value.itemNumber
          : itemNumber // ignore: cast_nullable_to_non_nullable
              as int,
      paidStatus: paidStatus == freezed
          ? _value.paidStatus
          : paidStatus // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $CustomerModelCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerModelCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }

  @override
  $VehicleModelCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleModelCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value));
    });
  }

  @override
  $PaymentCardInfoModelCopyWith<$Res>? get paymentCardInfo {
    if (_value.paymentCardInfo == null) {
      return null;
    }

    return $PaymentCardInfoModelCopyWith<$Res>(_value.paymentCardInfo!,
        (value) {
      return _then(_value.copyWith(paymentCardInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String uuid,
      String code,
      CustomerModel? customer,
      VehicleModel? vehicle,
      List<EmployeesModel>? employee,
      DateTime date,
      int amount,
      int grandAmount,
      double? disc,
      int paymentType,
      PaymentCardInfoModel? paymentCardInfo,
      int? charge,
      int paidAmount,
      int changeAmount,
      String? description,
      int? tax,
      int itemNumber,
      int paidStatus,
      int accountId});

  @override
  $CustomerModelCopyWith<$Res>? get customer;
  @override
  $VehicleModelCopyWith<$Res>? get vehicle;
  @override
  $PaymentCardInfoModelCopyWith<$Res>? get paymentCardInfo;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res> extends _$OrderModelCopyWithImpl<$Res>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, (v) => _then(v as _$_OrderModel));

  @override
  _$_OrderModel get _value => super._value as _$_OrderModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? code = freezed,
    Object? customer = freezed,
    Object? vehicle = freezed,
    Object? employee = freezed,
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
    Object? accountId = freezed,
  }) {
    return _then(_$_OrderModel(
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
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
      vehicle: vehicle == freezed
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleModel?,
      employee: employee == freezed
          ? _value._employee
          : employee // ignore: cast_nullable_to_non_nullable
              as List<EmployeesModel>?,
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
              as double?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentCardInfo: paymentCardInfo == freezed
          ? _value.paymentCardInfo
          : paymentCardInfo // ignore: cast_nullable_to_non_nullable
              as PaymentCardInfoModel?,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      tax: tax == freezed
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int?,
      itemNumber: itemNumber == freezed
          ? _value.itemNumber
          : itemNumber // ignore: cast_nullable_to_non_nullable
              as int,
      paidStatus: paidStatus == freezed
          ? _value.paidStatus
          : paidStatus // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel extends _OrderModel {
  const _$_OrderModel(
      {required this.id,
      required this.uuid,
      required this.code,
      required this.customer,
      required this.vehicle,
      required final List<EmployeesModel>? employee,
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
      required this.paidStatus,
      required this.accountId})
      : _employee = employee,
        super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String code;
  @override
  final CustomerModel? customer;
  @override
  final VehicleModel? vehicle;
  final List<EmployeesModel>? _employee;
  @override
  List<EmployeesModel>? get employee {
    final value = _employee;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime date;
  @override
  final int amount;
  @override
  final int grandAmount;
  @override
  final double? disc;
  @override
  final int paymentType;
  @override
  final PaymentCardInfoModel? paymentCardInfo;
  @override
  final int? charge;
  @override
  final int paidAmount;
  @override
  final int changeAmount;
  @override
  final String? description;
  @override
  final int? tax;
  @override
  final int itemNumber;
  @override
  final int paidStatus;
  @override
  final int accountId;

  @override
  String toString() {
    return 'OrderModel(id: $id, uuid: $uuid, code: $code, customer: $customer, vehicle: $vehicle, employee: $employee, date: $date, amount: $amount, grandAmount: $grandAmount, disc: $disc, paymentType: $paymentType, paymentCardInfo: $paymentCardInfo, charge: $charge, paidAmount: $paidAmount, changeAmount: $changeAmount, description: $description, tax: $tax, itemNumber: $itemNumber, paidStatus: $paidStatus, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.customer, customer) &&
            const DeepCollectionEquality().equals(other.vehicle, vehicle) &&
            const DeepCollectionEquality().equals(other._employee, _employee) &&
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
                .equals(other.paidStatus, paidStatus) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(uuid),
        const DeepCollectionEquality().hash(code),
        const DeepCollectionEquality().hash(customer),
        const DeepCollectionEquality().hash(vehicle),
        const DeepCollectionEquality().hash(_employee),
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
        const DeepCollectionEquality().hash(paidStatus),
        const DeepCollectionEquality().hash(accountId)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(this);
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {required final int id,
      required final String uuid,
      required final String code,
      required final CustomerModel? customer,
      required final VehicleModel? vehicle,
      required final List<EmployeesModel>? employee,
      required final DateTime date,
      required final int amount,
      required final int grandAmount,
      required final double? disc,
      required final int paymentType,
      required final PaymentCardInfoModel? paymentCardInfo,
      required final int? charge,
      required final int paidAmount,
      required final int changeAmount,
      required final String? description,
      required final int? tax,
      required final int itemNumber,
      required final int paidStatus,
      required final int accountId}) = _$_OrderModel;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  CustomerModel? get customer => throw _privateConstructorUsedError;
  @override
  VehicleModel? get vehicle => throw _privateConstructorUsedError;
  @override
  List<EmployeesModel>? get employee => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get grandAmount => throw _privateConstructorUsedError;
  @override
  double? get disc => throw _privateConstructorUsedError;
  @override
  int get paymentType => throw _privateConstructorUsedError;
  @override
  PaymentCardInfoModel? get paymentCardInfo =>
      throw _privateConstructorUsedError;
  @override
  int? get charge => throw _privateConstructorUsedError;
  @override
  int get paidAmount => throw _privateConstructorUsedError;
  @override
  int get changeAmount => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get tax => throw _privateConstructorUsedError;
  @override
  int get itemNumber => throw _privateConstructorUsedError;
  @override
  int get paidStatus => throw _privateConstructorUsedError;
  @override
  int get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
