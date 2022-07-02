import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';
import 'package:pos/domain/customer/entity/customer.dart';
import 'package:pos/domain/employee/entity/employees.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';

import 'object_value_failure.dart';
import 'order_object_value.dart';
import 'value_object_validators.dart';

class CreateOrderUuid extends ObjectValue<String> {
  @override
  final Either<OrderObjectValueFailure<String, String>, String> value;

  factory CreateOrderUuid(String input) {
    return CreateOrderUuid._(validateFieldStringNotEmpty(input));
  }

  const CreateOrderUuid._(this.value);
}

class CreateOrderCode extends ObjectValue<String> {
  @override
  final Either<OrderObjectValueFailure<String, String>, String> value;

  factory CreateOrderCode(String input) {
    return CreateOrderCode._(validateFieldStringNotEmpty(input));
  }

  const CreateOrderCode._(this.value);
}

class CreateOrderDescription extends ObjectValue<String> {
  @override
  final Either<OrderObjectValueFailure<String, String>, String> value;

  factory CreateOrderDescription(String input) {
    return CreateOrderDescription._(validateFieldStringNotEmpty(input));
  }

  const CreateOrderDescription._(this.value);
}

class CreateOrderCustomer extends ObjectValue<Customer?> {
  @override
  final Either<OrderObjectValueFailure<Customer?, String>, Customer?> value;

  factory CreateOrderCustomer(Customer? input) {
    return CreateOrderCustomer._(validateFieldNotCustomerAndNotEmpty(input));
  }

  const CreateOrderCustomer._(this.value);
}

class CreateOrderVehicle extends ObjectValue<Vehicle?> {
  @override
  final Either<OrderObjectValueFailure<Vehicle?, String>, Vehicle?> value;

  factory CreateOrderVehicle(Vehicle? input) {
    return CreateOrderVehicle._(validateFieldNotVehicleAndNotEmpty(input));
  }

  const CreateOrderVehicle._(this.value);
}

class CreateOrderEmployees extends ObjectValue<Employees?> {
  @override
  final Either<OrderObjectValueFailure<Employees?, String>, Employees?> value;

  factory CreateOrderEmployees(Employees? input) {
    return CreateOrderEmployees._(validateFieldNotEmployeesAndNotEmpty(input));
  }

  const CreateOrderEmployees._(this.value);
}

class CreateOrderAmount extends ObjectValue<int> {
  @override
  final Either<OrderObjectValueFailure<String, String>, int> value;

  factory CreateOrderAmount(String input) {
    return CreateOrderAmount._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateOrderAmount._(this.value);
}

class CreateOrderGrandAmount extends ObjectValue<int> {
  @override
  final Either<OrderObjectValueFailure<String, String>, int> value;

  factory CreateOrderGrandAmount(String input) {
    return CreateOrderGrandAmount._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateOrderGrandAmount._(this.value);
}

class CreateOrderDisc extends ObjectValue<double?> {
  @override
  final Either<OrderObjectValueFailure<String, String>, double?> value;

  factory CreateOrderDisc(String? input) {
    return CreateOrderDisc._(validateFieldNotDoubleAndEmpty(input));
  }

  const CreateOrderDisc._(this.value);
}

class CreateOrderPaymentType extends ObjectValue<int?> {
  @override
  final Either<OrderObjectValueFailure<int?, String>, int?> value;

  factory CreateOrderPaymentType(int? input) {
    return CreateOrderPaymentType._(validateFieldNotIntAndNotEmpty1(input));
  }

  const CreateOrderPaymentType._(this.value);
}

class CreateOrderCharge extends ObjectValue<int> {
  @override
  final Either<OrderObjectValueFailure<String, String>, int> value;

  factory CreateOrderCharge(String input) {
    return CreateOrderCharge._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateOrderCharge._(this.value);
}

class CreateOrderPaidAmount extends ObjectValue<int> {
  @override
  final Either<OrderObjectValueFailure<String, String>, int> value;

  factory CreateOrderPaidAmount(String input) {
    return CreateOrderPaidAmount._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateOrderPaidAmount._(this.value);
}

class CreateOrderChangeAmount extends ObjectValue<int> {
  @override
  final Either<OrderObjectValueFailure<String, String>, int> value;

  factory CreateOrderChangeAmount(String input) {
    return CreateOrderChangeAmount._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateOrderChangeAmount._(this.value);
}

class CreateOrderTax extends ObjectValue<int> {
  @override
  final Either<OrderObjectValueFailure<String, String>, int> value;

  factory CreateOrderTax(String input) {
    return CreateOrderTax._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateOrderTax._(this.value);
}

class CreateOrderItemNumber extends ObjectValue<int> {
  @override
  final Either<OrderObjectValueFailure<String, String>, int> value;

  factory CreateOrderItemNumber(String input) {
    return CreateOrderItemNumber._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateOrderItemNumber._(this.value);
}

class CreateOrderPaidStatus extends ObjectValue<int> {
  @override
  final Either<OrderObjectValueFailure<String, String>, int> value;

  factory CreateOrderPaidStatus(String input) {
    return CreateOrderPaidStatus._(validateFieldNotIntAndNotEmpty(input));
  }

  const CreateOrderPaidStatus._(this.value);
}

class CreateOrderDate extends ObjectValue<DateTime> {
  @override
  final Either<OrderObjectValueFailure<String, String>, DateTime> value;

  factory CreateOrderDate(String input) {
    return CreateOrderDate._(validateFieldNotDateTimeAndNotEmpty(input));
  }

  const CreateOrderDate._(this.value);
}

class CreateOrderPaymentCardInfo extends ObjectValue<CraetePaymentCardInfo?> {
  @override
  final Either<OrderObjectValueFailure<String, String>, CraetePaymentCardInfo?>
      value;

  factory CreateOrderPaymentCardInfo(CraetePaymentCardInfo? input) {
    return CreateOrderPaymentCardInfo._(validateFieldPaymentCardInfo(input));
  }

  const CreateOrderPaymentCardInfo._(this.value);
}

class CraetePaymentCardInfoName extends ObjectValue<String> {
  @override
  final Either<OrderObjectValueFailure<String, String>, String> value;

  factory CraetePaymentCardInfoName(String input) {
    return CraetePaymentCardInfoName._(validateFieldStringNotEmpty(input));
  }

  const CraetePaymentCardInfoName._(this.value);
}

class CraetePaymentCardInfoNumber extends ObjectValue<String> {
  @override
  final Either<OrderObjectValueFailure<String, String>, String> value;

  factory CraetePaymentCardInfoNumber(String input) {
    return CraetePaymentCardInfoNumber._(validateFieldStringNotEmpty(input));
  }

  const CraetePaymentCardInfoNumber._(this.value);
}

class CraetePaymentCardInfoNumberRef extends ObjectValue<String> {
  @override
  final Either<OrderObjectValueFailure<String, String>, String> value;

  factory CraetePaymentCardInfoNumberRef(String input) {
    return CraetePaymentCardInfoNumberRef._(validateFieldStringNotEmpty(input));
  }

  const CraetePaymentCardInfoNumberRef._(this.value);
}

class CraetePaymentCardInfoRemarks extends ObjectValue<String> {
  @override
  final Either<OrderObjectValueFailure<String, String>, String> value;

  factory CraetePaymentCardInfoRemarks(String input) {
    return CraetePaymentCardInfoRemarks._(validateFieldStringNotEmpty(input));
  }

  const CraetePaymentCardInfoRemarks._(this.value);
}
