import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/customer/entity/customer.dart';

part 'customer_list_state.dart';
part 'customer_list_cubit.freezed.dart';
part 'customer_list_cubit.g.dart';

class CustomerCubit extends HydratedCubit<CustomerState> {
  CustomerCubit() : super(CustomerState.initial());

  void CustomerStarted() async {
    //await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(customers: state.customers));
  }

  @override
  CustomerState fromJson(Map<String, dynamic> json) {
    debugPrint("Customer CUBIT FROM JSON");
    return CustomerState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CustomerState state) {
    debugPrint("Customer CUBIT TO JSON ${state.customers}");
    return state.toJson();
  }
}
