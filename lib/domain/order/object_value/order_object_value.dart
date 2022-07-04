import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/failures.dart';
import 'package:pos/domain/payment_card_info/object_value/payment_card_info_object_value.dart';

import 'object_value.dart';

part "order_object_value.freezed.dart";

@freezed
class CreateOrder with _$CreateOrder {
  const factory CreateOrder({
    required CreateOrderUuid uuid,
    required CreateOrderCode code,
    required CreateOrderCustomer customer,
    required CreateOrderVehicle vehicle,
    required CreateOrderEmployees employees,
    required CreateOrderDate date,
    required CreateOrderAmount amount,
    required CreateOrderGrandAmount grandAmount,
    required CreateOrderDisc disc,
    required CreateOrderPaymentType paymentType,
    //required CreateOrderPaymentCardInfo paymentCardInfo,
    required CraetePaymentCardInfo? paymentCardInfo,
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
        customer: CreateOrderCustomer(null),
        vehicle: CreateOrderVehicle(null),
        employees: CreateOrderEmployees(null),
        date: CreateOrderDate(''),
        amount: CreateOrderAmount(''),
        grandAmount: CreateOrderGrandAmount(''),
        disc: CreateOrderDisc(''),
        paymentType: CreateOrderPaymentType(null),
        paymentCardInfo: null,
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
    return customer.failureOrUnit
        .andThen(vehicle.failureOrUnit)
        .andThen(employees.failureOrUnit)
        .andThen(disc.failureOrUnit)
        .andThen(paymentType.failureOrUnit)
        .andThen(charge.failureOrUnit)
        .andThen(tax.failureOrUnit)
        .andThen(paidAmount.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
