part of 'payment_card_info_list_cubit.dart';

@freezed
class PaymentCardInfoListState with _$PaymentCardInfoListState {
  const factory PaymentCardInfoListState(
          {required List<PaymentCardInfo>? paymentCardInfos}) =
      _PaymentCardInfoListState;

  factory PaymentCardInfoListState.initial() =>
      const PaymentCardInfoListState(paymentCardInfos: null);

  factory PaymentCardInfoListState.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardInfoListStateFromJson(json);
}
