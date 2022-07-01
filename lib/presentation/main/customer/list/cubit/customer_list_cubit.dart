import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/customer/entity/customer.dart';

part 'customer_list_state.dart';
part 'customer_list_cubit.freezed.dart';
part 'customer_list_cubit.g.dart';

class CustomerListCubit extends HydratedCubit<CustomerListState> {
  CustomerListCubit() : super(CustomerListState.initial());

  // void catalogStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(customers: state.customers));
  // }

  onAdditem(Customer item) {
    List<Customer> customers = [];
    if (state.customers != null) {
      customers = List.from(state.customers!.toList());
      customers.add(item);
    } else {
      customers.add(item);
    }
    emit(state.copyWith(
      customers: customers,
    ));
  }

  @override
  CustomerListState fromJson(Map<String, dynamic> json) {
    debugPrint("Castomer CUBIT FROM JSON");
    return CustomerListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CustomerListState state) {
    debugPrint("Catalog CUBIT TO JSON ${state.customers}");
    return state.toJson();
  }
}
