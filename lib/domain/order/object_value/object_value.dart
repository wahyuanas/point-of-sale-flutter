import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';

import 'object_value_failure.dart';
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

class CreateOrderCustomer extends ObjectValue<CustomerModel?> {
  @override
  final Either<OrderObjectValueFailure<CustomerModel?, String>, CustomerModel?>
      value;

  factory CreateOrderCustomer(CustomerModel? input) {
    return CreateOrderCustomer._(validateFieldNotCustomerAndNotEmpty(input));
  }

  const CreateOrderCustomer._(this.value);
}

class CreateOrderVehicle extends ObjectValue<VehicleModel?> {
  @override
  final Either<OrderObjectValueFailure<VehicleModel?, String>, VehicleModel?>
      value;

  factory CreateOrderVehicle(VehicleModel? input) {
    return CreateOrderVehicle._(validateFieldNotVehicleAndNotEmpty(input));
  }

  const CreateOrderVehicle._(this.value);
}

class CreateOrderEmployees extends ObjectValue<List<EmployeesModel>?> {
  @override
  final Either<OrderObjectValueFailure<List<EmployeesModel>?, String>,
      List<EmployeesModel>?> value;

  factory CreateOrderEmployees(List<EmployeesModel>? input) {
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

class CreateOrderGrandAmount extends ObjectValue<int?> {
  @override
  final Either<OrderObjectValueFailure<int?, String>, int?> value;

  factory CreateOrderGrandAmount(int? input) {
    return CreateOrderGrandAmount._(validateFieldNotIntAndNotEmpty1(input));
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

class CreateOrderChangeAmount extends ObjectValue<int?> {
  @override
  final Either<OrderObjectValueFailure<int?, String>, int?> value;

  factory CreateOrderChangeAmount(int? input) {
    return CreateOrderChangeAmount._(validateFieldNotIntAndNotEmpty1(input));
  }

  const CreateOrderChangeAmount._(this.value);
}

class CreateOrderTax extends ObjectValue<int?> {
  @override
  final Either<OrderObjectValueFailure<int?, String>, int?> value;

  factory CreateOrderTax(int? input) {
    return CreateOrderTax._(validateFieldNotIntAndNotEmpty1(input));
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
