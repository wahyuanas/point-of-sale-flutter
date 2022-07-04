import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'object_value_failure.dart';
import 'payment_card_info_object_value.dart';

Either<OrderObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(OrderObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
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
