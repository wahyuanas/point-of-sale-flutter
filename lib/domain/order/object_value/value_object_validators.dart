import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/customer/entity/customer.dart';
import 'package:pos/domain/employee/entity/employees.dart';
import 'package:pos/domain/vehicle/entity/vehicle.dart';

import 'object_value_failure.dart';
import 'order_object_value.dart';

Either<OrderObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<Customer?, String>, Customer?>
    validateFieldNotCustomerAndNotEmpty(Customer? input) {
  if (input == null) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<Vehicle?, String>, Vehicle?>
    validateFieldNotVehicleAndNotEmpty(Vehicle? input) {
  if (input == null) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<Employees?, String>, Employees?>
    validateFieldNotEmployeesAndNotEmpty(Employees? input) {
  if (input == null) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<String, String>, int>
    validateFieldNotIntAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(OrderObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        OrderObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (int.tryParse(input.replaceAll('.', '')) == null) {
    return left(OrderObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input.replaceAll('.', '')));
  }
}

Either<OrderObjectValueFailure<int?, String>, int?>
    validateFieldNotIntAndNotEmpty1(int? input) {
  if (input == null) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<String, String>, DateTime>
    validateFieldNotDateTimeAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(DateTime(2000));
  }
}

Either<OrderObjectValueFailure<String, String>, double>
    validateFieldNotDoubleAndNotEmpty(String input) {
  if (input.isEmpty) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(OrderObjectValueFailure.noSpaceAllowed(failedValue: input));
  }
  if (!RegExp(r'^[0-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        OrderObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (double.tryParse(input) == null) {
    return left(OrderObjectValueFailure.notDoubleField(failedValue: input));
  } else {
    return right(double.tryParse(input)!);
  }
}

Either<OrderObjectValueFailure<String, String>, double?>
    validateFieldNotDoubleAndEmpty(String? input) {
  if (input == null) {
    return right(null);
  }
  if (input.isEmpty) {
    return right(null);
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(OrderObjectValueFailure.noSpaceAllowed(failedValue: input));
  } else if (!RegExp(r'^[0-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        OrderObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (double.tryParse(input) == null) {
    return left(OrderObjectValueFailure.notDoubleField(failedValue: input));
  } else {
    return right(double.tryParse(input));
  }
}

Either<OrderObjectValueFailure<String, String>, CraetePaymentCardInfo?>
    validateFieldPaymentCardInfo(CraetePaymentCardInfo? input) {
  debugPrint("ORDER VALUE OBJECT VALIDATOR ");
  if (input == null) {
    return right(null);
  } else {
    return right(input);
  }
}
