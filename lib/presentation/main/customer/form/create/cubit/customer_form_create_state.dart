part of 'customer_form_create_cubit.dart';

@freezed
class CustomerFormCreateState with _$CustomerFormCreateState {
  const factory CustomerFormCreateState(
      {required StateStatus<FailureExceptions, Customer> status,
      required CreateCustomer createCustomer,
      required bool initial}) = _CustomerFormCreateState;

  factory CustomerFormCreateState.initial() => CustomerFormCreateState(
      status: const StateStatus.initial(),
      createCustomer: CreateCustomer.empty(),
      initial: true);
}
