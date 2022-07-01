part of 'pos_payment_cubit.dart';

@freezed
class PosPaymentState with _$PosPaymentState {
  const factory PosPaymentState(
      {required StateStatus<FailureExceptions, Order> status,
      required CreateOrder? createOrder,
      required bool initial}) = _PosPaymentState;

  factory PosPaymentState.initial() => const PosPaymentState(
      status: StateStatus.initial(), createOrder: null, initial: true);
}
