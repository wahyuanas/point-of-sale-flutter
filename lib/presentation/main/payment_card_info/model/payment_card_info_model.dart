import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/payment_card_info/entity/payment_card_info.dart';

part 'payment_card_info_model.freezed.dart';
part 'payment_card_info_model.g.dart';

@freezed
class PaymentCardInfoModel with _$PaymentCardInfoModel {
  const PaymentCardInfoModel._();
  const factory PaymentCardInfoModel({
    required int id,
    required String uuid,
    required String name,
    required String number,
    required String numberRef,
    required String remarks,
    required int accountId,
  }) = _PaymentCardInfoModel;

  static PaymentCardInfoModel createPaymentCardInfoModel(
    PaymentCardInfo paymentCardInfo,
  ) {
    return PaymentCardInfoModel(
        id: paymentCardInfo.id,
        uuid: paymentCardInfo.uuid,
        name: paymentCardInfo.name,
        number: paymentCardInfo.number,
        numberRef: paymentCardInfo.numberRef,
        remarks: paymentCardInfo.remarks,
        accountId: paymentCardInfo.accountId);
  }

  factory PaymentCardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardInfoModelFromJson(json);
}
