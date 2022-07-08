import 'package:dartz/dartz.dart';
import 'package:pos/domain/core/object_value/object_value.dart';
import 'object_value_failure.dart';
import 'payment_card_info_object_value.dart';
import 'value_object_validators.dart';

class CraetePaymentCardInfoId extends ObjectValue<int?> {
  @override
  final Either<CraetePaymentCardInfoObjectValueFailure<int?, String>, int?>
      value;

  factory CraetePaymentCardInfoId(int? input) {
    return CraetePaymentCardInfoId._(validateFieldNotIntAndNotEmpty1(input));
  }

  const CraetePaymentCardInfoId._(this.value);
}

class CreateOrderPaymentCardInfo extends ObjectValue<CraetePaymentCardInfo?> {
  @override
  final Either<CraetePaymentCardInfoObjectValueFailure<String, String>,
      CraetePaymentCardInfo?> value;

  factory CreateOrderPaymentCardInfo(CraetePaymentCardInfo? input) {
    return CreateOrderPaymentCardInfo._(validateFieldPaymentCardInfo(input));
  }

  const CreateOrderPaymentCardInfo._(this.value);
}

class CraetePaymentCardInfoName extends ObjectValue<String> {
  @override
  final Either<CraetePaymentCardInfoObjectValueFailure<String, String>, String>
      value;

  factory CraetePaymentCardInfoName(String input) {
    return CraetePaymentCardInfoName._(validateFieldStringNotEmpty(input));
  }

  const CraetePaymentCardInfoName._(this.value);
}

class CraetePaymentCardInfoNumber extends ObjectValue<String> {
  @override
  final Either<CraetePaymentCardInfoObjectValueFailure<String, String>, String>
      value;

  factory CraetePaymentCardInfoNumber(String input) {
    return CraetePaymentCardInfoNumber._(validateFieldStringNotEmpty(input));
  }

  const CraetePaymentCardInfoNumber._(this.value);
}

class CraetePaymentCardInfoNumberRef extends ObjectValue<String> {
  @override
  final Either<CraetePaymentCardInfoObjectValueFailure<String, String>, String>
      value;

  factory CraetePaymentCardInfoNumberRef(String input) {
    return CraetePaymentCardInfoNumberRef._(validateFieldStringNotEmpty(input));
  }

  const CraetePaymentCardInfoNumberRef._(this.value);
}

class CraetePaymentCardInfoRemarks extends ObjectValue<String> {
  @override
  final Either<CraetePaymentCardInfoObjectValueFailure<String, String>, String>
      value;

  factory CraetePaymentCardInfoRemarks(String input) {
    return CraetePaymentCardInfoRemarks._(validateFieldStringNotEmpty(input));
  }

  const CraetePaymentCardInfoRemarks._(this.value);
}
