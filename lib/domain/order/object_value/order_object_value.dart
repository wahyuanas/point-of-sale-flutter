import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "order_object_value.freezed.dart";

@freezed
class CreateOrder with _$CreateOrder {
  const factory CreateOrder({
    required CreateOrderUuid uuid,
    required CreateOrderCode code,
    required CreateOrderCustomerId customerId,
    required CreateOrderVehicleId vehicleId,
    required CreateOrderEmployeeId employeeId,
    required CreateOrderDate date,
    required CreateOrderAmount amount,
    required CreateOrderGrandAmount grandAmount,
    required CreateOrderDisc disc,
    required CreateOrderPaymentType paymentType,
    required CreateOrderPaymentCardInfo paymentCardInfo,
    required CreateOrderCharge charge,
    required CreateOrderPaidAmount paidAmount,
    required CreateOrderChangeAmount changeAmount,
    required CreateOrderDescription description,
    required CreateOrderTax tax,
    required CreateOrderItemNumber itemNumber,
    required CreateOrderPaidStatus paidStatus,
  }) = _CreateOrder;

  factory CreateOrder.empty() => CreateOrder(
        uuid: CreateOrderUuid(''),
        code: CreateOrderCode(''),
        customerId: CreateOrderCustomerId(''),
        vehicleId: CreateOrderVehicleId(''),
        employeeId: CreateOrderEmployeeId(''),
        date: CreateOrderDate(''),
        amount: CreateOrderAmount(''),
        grandAmount: CreateOrderGrandAmount(''),
        disc: CreateOrderDisc(''),
        paymentType: CreateOrderPaymentType(null),
        paymentCardInfo: CreateOrderPaymentCardInfo(null),
        charge: CreateOrderCharge(''),
        paidAmount: CreateOrderPaidAmount(''),
        changeAmount: CreateOrderChangeAmount(''),
        description: CreateOrderDescription(''),
        tax: CreateOrderTax(''),
        itemNumber: CreateOrderItemNumber(''),
        paidStatus: CreateOrderPaidStatus(''),
      );
}

extension CreateOrderX on CreateOrder {
  Option<ObjectValueFailure> get failureOption {
    return customerId.failureOrUnit
        .andThen(vehicleId.failureOrUnit)
        .andThen(employeeId.failureOrUnit)
        .andThen(disc.failureOrUnit)
        .andThen(paymentType.failureOrUnit)
        .andThen(charge.failureOrUnit)
        .andThen(tax.failureOrUnit)
        .andThen(paidAmount.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}

@freezed
class CraetePaymentCardInfo with _$CraetePaymentCardInfo implements IEntity {
  const CraetePaymentCardInfo._();
  const factory CraetePaymentCardInfo({
    required CraetePaymentCardInfoName name,
    required CraetePaymentCardInfoNumber number,
    required CraetePaymentCardInfoNumberRef numberRef,
    required CraetePaymentCardInfoRemarks remarks,
  }) = _CraetePaymentCardInfo;

  factory CraetePaymentCardInfo.empty() => CraetePaymentCardInfo(
        name: CraetePaymentCardInfoName(''),
        number: CraetePaymentCardInfoNumber(''),
        numberRef: CraetePaymentCardInfoNumberRef(''),
        remarks: CraetePaymentCardInfoRemarks(''),
      );

  CraetePaymentCardInfo copyWithName(String? v) => CraetePaymentCardInfo(
      name: CraetePaymentCardInfoName(v ?? ''),
      number: number,
      numberRef: numberRef,
      remarks: remarks);

  CraetePaymentCardInfo copyWithNumber(String? v) => CraetePaymentCardInfo(
      name: name,
      number: CraetePaymentCardInfoNumber(v ?? ''),
      numberRef: numberRef,
      remarks: remarks);

  CraetePaymentCardInfo copyWithNumberRef(String? v) => CraetePaymentCardInfo(
      name: name,
      number: number,
      numberRef: CraetePaymentCardInfoNumberRef(v ?? ''),
      remarks: remarks);

  CraetePaymentCardInfo copyWithRemarks(String? v) => CraetePaymentCardInfo(
      name: name,
      number: number,
      numberRef: numberRef,
      remarks: CraetePaymentCardInfoRemarks(v ?? ''));

  factory CraetePaymentCardInfo.fromJson(Map<String, dynamic> json) =>
      _$CraetePaymentCardInfoFromJson(json);
}

extension CraetePaymentCardInfoX on CraetePaymentCardInfo {
  Option<ObjectValueFailure> get failureOption {
    return name.failureOrUnit
        .andThen(number.failureOrUnit)
        .andThen(numberRef.failureOrUnit)
        .andThen(remarks.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
