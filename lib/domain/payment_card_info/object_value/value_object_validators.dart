import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'object_value_failure.dart';
import 'payment_card_info_object_value.dart';

Either<CraetePaymentCardInfoObjectValueFailure<String, String>, String>
    validateFieldStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(
        CraetePaymentCardInfoObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}

Either<CraetePaymentCardInfoObjectValueFailure<String, String>,
        CraetePaymentCardInfo?>
    validateFieldPaymentCardInfo(CraetePaymentCardInfo? input) {
  debugPrint("ORDER VALUE OBJECT VALIDATOR ");
  if (input == null) {
    return right(null);
  } else {
    return right(input);
  }
}

Either<CraetePaymentCardInfoObjectValueFailure<int?, String>, int?>
    validateFieldNotIntAndNotEmpty1(int? input) {
  if (input == null) {
    return left(
        CraetePaymentCardInfoObjectValueFailure.emptyField(failedValue: input));
  } else {
    return right(input);
  }
}
