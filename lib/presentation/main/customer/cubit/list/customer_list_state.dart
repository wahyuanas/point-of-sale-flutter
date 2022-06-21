part of 'customer_list_cubit.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState({required List<Customer>? customers}) =
      _CustomerState;

  factory CustomerState.initial() => const CustomerState(customers: null);
  factory CustomerState.reLoad(List<Customer>? customers) => CustomerState(
        customers: customers,
      );

  factory CustomerState.fromJson(Map<String, dynamic> json) =>
      _$CustomerStateFromJson(json);
}
