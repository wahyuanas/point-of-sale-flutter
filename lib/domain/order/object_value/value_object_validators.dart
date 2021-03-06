import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/domain/payment_card_info/object_value/payment_card_info_object_value.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';

import 'object_value_failure.dart';

Either<OrderObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return right(input);
    //return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<String?, String>, String?>
    validateFieldStringEmpty(String? input) {
  if (input == null) {
    return right(input);
    //return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<CustomerModel?, String>, CustomerModel?>
    validateFieldNotCustomerAndNotEmpty(CustomerModel? input) {
  if (input == null) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<VehicleModel?, String>, VehicleModel?>
    validateFieldNotVehicleAndNotEmpty(VehicleModel? input) {
  if (input == null) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<List<EmployeesModel>?, String>,
        List<EmployeesModel>?>
    validateFieldNotEmployeesAndNotEmpty(List<EmployeesModel>? input) {
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
  } else if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
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
    return right(input);
    //return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<OrderObjectValueFailure<String?, String>, int?>
    validateFieldNotIntAndNotEmpty2(String? input) {
  if (input == null) {
    return right(null);
  } else if (input.isEmpty) {
    return right(null);
  } else if (RegExp(r"\s").hasMatch(input)) {
    return left(OrderObjectValueFailure.noSpaceAllowed(failedValue: input));
  } else if (!RegExp(r'^[1-9]+$').hasMatch(input.substring(0, 1))) {
    return left(
        OrderObjectValueFailure.exceptOneToNineAllowed(failedValue: input));
  } else if (int.tryParse(input.replaceAll('.', '')) == null) {
    return left(OrderObjectValueFailure.notIntField(failedValue: input));
  } else {
    return right(int.parse(input.replaceAll('.', '')));
  }
}

Either<OrderObjectValueFailure<String, String>, DateTime>
    validateFieldNotDateTimeAndNotEmpty(String input) {
  if (input.isEmpty) {
    return right(DateTime(2000));
    //return left(OrderObjectValueFailure.emptyField(failedValue: input));
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
  } else if (!RegExp(r'^[0-9]+$').hasMatch(input.substring(0, 1))) {
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
  } else if (input.isEmpty) {
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
