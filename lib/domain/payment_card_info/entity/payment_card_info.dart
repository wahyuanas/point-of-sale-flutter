import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

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

  factory PaymentCardInfo.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardInfoFromJson(json);
}
