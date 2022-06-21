part of 'pos_payment_cubit.dart';

@freezed
class PosPaymentState with _$PosPaymentState {
  const factory PosPaymentState({required List<Item>? items}) =
      _PosPaymentState;

  factory PosPaymentState.initial() => PosPaymentState(items: itemPos);
}
