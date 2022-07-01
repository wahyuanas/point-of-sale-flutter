part of 'pos_customer_list_cubit.dart';

@freezed
class PosCustomerListState with _$PosCustomerListState {
  const factory PosCustomerListState(
      {required List<Customer>? customers,
      required String? keyWord}) = _PosCustomerListState;

  factory PosCustomerListState.initial() =>
      const PosCustomerListState(customers: null, keyWord: null);
}
