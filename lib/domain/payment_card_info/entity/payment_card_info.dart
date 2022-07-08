import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/payment_card_info/object_value/payment_card_info_object_value.dart';

part 'payment_card_info.freezed.dart';
part 'payment_card_info.g.dart';

@freezed
class PaymentCardInfo with _$PaymentCardInfo implements IEntity {
  const PaymentCardInfo._();
  const factory PaymentCardInfo({
    required int id,
    required String name,
    required String number,
    required String numberRef,
    required String remarks,
  }) = _PaymentCardInfo;

  factory PaymentCardInfo.createPaymentCardInfo(
      int id, CraetePaymentCardInfo? craetePaymentCardInfo) {
    return PaymentCardInfo(
      id: id,
      name: craetePaymentCardInfo!.name.getOrCrash(),
      number: craetePaymentCardInfo.name.getOrCrash(),
      numberRef: craetePaymentCardInfo.name.getOrCrash(),
      remarks: craetePaymentCardInfo.name.getOrCrash(),
    );
  }

  factory PaymentCardInfo.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardInfoFromJson(json);
}
