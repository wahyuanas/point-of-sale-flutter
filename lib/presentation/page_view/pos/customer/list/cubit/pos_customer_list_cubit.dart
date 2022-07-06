import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/main/customer/list/cubit/customer_list_cubit.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';

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
    List<CustomerModel>? customers =
        _customerListCubit.state.customers?.map((customer) {
      return CustomerModel.fromCustomer(customer);
    }).toList();

    emit(state.copyWith(customers: customers));
  }

  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<CustomerModel>? customers;
      _customerListCubit.state.customers?.forEach((customer) {
        if (customer.name.toLowerCase().contains(v.toLowerCase())) {
          customers ?? [];
          customers?.add(CustomerModel.fromCustomer(customer));
        }
      });
      emit(state.copyWith(customers: customers, keyWord: v));
    } else {
      List<CustomerModel>? customers =
          _customerListCubit.state.customers!.map((customer) {
        return CustomerModel.fromCustomer(customer);
      }).toList();
      emit(state.copyWith(customers: customers));
    }
  }

  onReset() {
    emit(PosCustomerListState.initial());
  }

  onCustomerChannged(CustomerListState customerListState) {
    if (state.keyWord == null) {
      List<CustomerModel>? customers =
          _customerListCubit.state.customers!.map((customer) {
        return CustomerModel.fromCustomer(customer);
      }).toList();
      emit(state.copyWith(customers: customers));
    } else {
      List<CustomerModel>? customers;
      _customerListCubit.state.customers?.forEach((customer) {
        if (customer.name
            .toLowerCase()
            .contains(state.keyWord!.toLowerCase())) {
          customers ??= [];

          customers?.add(CustomerModel.fromCustomer(customer));
        }
      });
      emit(state.copyWith(customers: customers));
    }
  }

  @override
  Future<void> close() {
    _customerListSubscription.cancel();
    return super.close();
  }
}
