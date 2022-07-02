import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/customer/entity/customer.dart';
import 'package:pos/domain/customer/object_value/customer_object_value.dart';
import 'package:pos/domain/customer/object_value/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/customer/list/cubit/customer_list_cubit.dart';
import 'package:uuid/uuid.dart';

part 'customer_form_create_state.dart';
part 'customer_form_create_cubit.freezed.dart';

class CustomerFormCreateCubit extends Cubit<CustomerFormCreateState> {
  final CustomerListCubit customerListCubit;
  @override
  CustomerFormCreateCubit({required this.customerListCubit})
      : _customerListCubit = customerListCubit,
        super(CustomerFormCreateState.initial());

  final CustomerListCubit _customerListCubit;

  void onCreateCustomerCodeChanged(String v) {
    emit(state.copyWith(
      createCustomer:
          state.createCustomer.copyWith(code: CreateCustomerCode(v)),
    ));
  }

  void onCreateCustomerNameChanged(String v) {
    emit(state.copyWith(
      createCustomer:
          state.createCustomer.copyWith(name: CreateCustomerName(v)),
    ));
  }

  void onCreateCustomerPhoneNumberChanged(String v) {
    emit(state.copyWith(
      createCustomer: state.createCustomer
          .copyWith(phoneNumber: CreateCustomerPhoneNumber(v)),
    ));
  }

  void onCreateCustomerEmailChanged(String v) {
    emit(state.copyWith(
      createCustomer:
          state.createCustomer.copyWith(email: CreateCustomerEmail(v)),
    ));
  }

  void onCreateCustomerTypeChanged(String v) {
    emit(state.copyWith(
      createCustomer:
          state.createCustomer.copyWith(type: CreateCustomerType(v)),
    ));
  }

  void onCreateCustomerAddressChanged(String v) {
    emit(state.copyWith(
      createCustomer:
          state.createCustomer.copyWith(address: CreateCustomerAddress(v)),
    ));
  }
  // onCreate() async {
  //   if (state.CreateCustomer.failureOption.isSome()) {
  //     emit(state.copyWith(initial: false));
  //   } else {
  //     emit(state.copyWith(status: const StateStatus.loading()));
  //     //final failureOrSuccess = await accountService.signUp(state.signUp);
  //     await Future.delayed(const Duration(microseconds: 500));
  //     final id = _customerListCubit.state.items == null
  //         ? 1
  //         : _customerListCubit.state.items!.last.id + 1;
  //     Item r = Item.CreateCustomer(id, state.CreateCustomer);
  //     await Future.delayed(const Duration(milliseconds: 500));
  //     emit(state.copyWith(status: StateStatus.success(data: r)));
  //     _customerListCubit.onAdditem(r);

  //     // failureOrSuccess.fold(
  //     //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
  //     //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
  //   }
  // }

  // onInitial() {
  //   emit(CustomerFormCreateState.initial());
  // }
}
