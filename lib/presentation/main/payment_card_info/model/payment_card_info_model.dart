import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_card_info_model.freezed.dart';
part 'payment_card_info_model.g.dart';

@freezed
class PaymentCardInfoModel with _$PaymentCardInfoModel {
  const PaymentCardInfoModel._();
  const factory PaymentCardInfoModel({
    required int id,
    required String name,
    required String number,
    required String numberRef,
    required String remarks,
  }) = _PaymentCardInfoModel;

  factory PaymentCardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardInfoModelFromJson(json);
}
