part of 'pos_payment_cubit.dart';

@freezed
class PosPaymentState with _$PosPaymentState {
  const factory PosPaymentState(
      {required StateStatus<FailureExceptions, Order> status,
      required CreateOrder createOrder,
      required List<Pos>? poss,
      required bool initial}) = _PosPaymentState;

  factory PosPaymentState.initial() => PosPaymentState(
      status: const StateStatus.initial(),
      createOrder: CreateOrder.empty(),
      poss: null,
      initial: true);
}
