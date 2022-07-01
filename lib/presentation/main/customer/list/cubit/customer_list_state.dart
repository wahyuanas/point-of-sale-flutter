part of 'customer_list_cubit.dart';

@freezed
class CustomerListState with _$CustomerListState {
  const factory CustomerListState({required List<Customer>? customers}) =
      _CustomerListState;

  factory CustomerListState.initial() =>
      const CustomerListState(customers: null);
  factory CustomerListState.reLoad(List<Customer>? customers) =>
      CustomerListState(
        customers: customers,
      );

  factory CustomerListState.fromJson(Map<String, dynamic> json) =>
      _$CustomerListStateFromJson(json);
}
