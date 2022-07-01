import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/customer/entity/customer.dart';
import 'package:pos/presentation/main/customer/list/cubit/customer_list_cubit.dart';

part 'pos_customer_list_state.dart';
part 'pos_customer_list_cubit.freezed.dart';

class PosCustomerListCubit extends Cubit<PosCustomerListState> {
  final CustomerListCubit customerListCubit;
  PosCustomerListCubit({required this.customerListCubit})
      : _customerListCubit = customerListCubit,
        super(PosCustomerListState.initial()) {
    _customerListSubscription =
        _customerListCubit.stream.listen((customerListState) {
      onCustomerChannged(customerListState);
    });
  }
  final CustomerListCubit _customerListCubit;
  late StreamSubscription _customerListSubscription;

  onStarted() {
    emit(state.copyWith(customers: _customerListCubit.state.customers));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<Customer>? listCustomer; //= List.from(state.customers!.toList());
      listCustomer = customerListCubit.state.customers
          ?.where((customer) =>
              customer.name.toLowerCase().contains(v.toLowerCase()))
          .toList();
      emit(state.copyWith(customers: listCustomer, keyWord: v));
    } else {
      List<Customer>? listCustomer = customerListCubit.state.customers;
      emit(state.copyWith(customers: listCustomer));
    }
  }

  onReset() {
    emit(PosCustomerListState.initial());
  }

  onCustomerChannged(CustomerListState customerListState) {
    if (state.keyWord == null) {
      emit(state.copyWith(customers: customerListState.customers));
    } else {
      List<Customer>? listCustomer; //= List.from(state.customers!.toList());
      listCustomer = customerListCubit.state.customers
          ?.where((customer) => customer.name
              .toLowerCase()
              .contains(state.keyWord!.toLowerCase()))
          .toList();
      emit(state.copyWith(customers: listCustomer));
    }
  }

  @override
  Future<void> close() {
    _customerListSubscription.cancel();
    return super.close();
  }
}
