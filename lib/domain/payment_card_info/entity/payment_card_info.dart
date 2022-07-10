import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:pos/domain/payment_card_info/object_value/payment_card_info_object_value.dart';
import 'package:uuid/uuid.dart';

part 'payment_card_info.freezed.dart';
part 'payment_card_info.g.dart';

@freezed
class PaymentCardInfo with _$PaymentCardInfo implements IEntity {
  const PaymentCardInfo._();
  const factory PaymentCardInfo(
      {required int id,
      required String uuid,
      required String name,
      required String number,
      required String numberRef,
      required String remarks,
      required int accountId}) = _PaymentCardInfo;

  factory PaymentCardInfo.createPaymentCardInfo(
      int id, CraetePaymentCardInfo? craetePaymentCardInfo) {
    return PaymentCardInfo(
      id: id,
      uuid: const Uuid().v4(),
      name: craetePaymentCardInfo!.name.getOrCrash(),
      number: craetePaymentCardInfo.number.getOrCrash(),
      numberRef: craetePaymentCardInfo.numberRef.getOrCrash(),
      remarks: craetePaymentCardInfo.remarks.getOrCrash(),
      accountId: craetePaymentCardInfo.accountId.getOrCrash()!,
    );
  }

  factory PaymentCardInfo.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardInfoFromJson(json);
}
