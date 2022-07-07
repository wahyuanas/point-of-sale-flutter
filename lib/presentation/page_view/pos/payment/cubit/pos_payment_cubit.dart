import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/object_value/value_object_validators.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/domain/order/entity/order.dart';
import 'package:pos/domain/order/object_value/object_value.dart';
import 'package:pos/domain/order/object_value/order_object_value.dart';
import 'package:pos/domain/payment_card_info/object_value/object_value.dart';
import 'package:pos/domain/payment_card_info/object_value/payment_card_info_object_value.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';

part 'pos_payment_state.dart';
part 'pos_payment_cubit.freezed.dart';

class PosPaymentCubit extends Cubit<PosPaymentState> {
  PosPaymentCubit() : super(PosPaymentState.initial());

  void onPaymentCardInfoNameChanged(String v) {
    // emit(state.copyWith(
    //     createOrder: state.createOrder.copyWith(
    //         paymentCardInfo: CreateOrderPaymentCardInfo(
    //             state.createOrder.paymentCardInfo.value.fold((l) {
    //   debugPrint("POS PAYMENT CUBIT 3");
    //   return null;
    // }, (r) {
    //   debugPrint("POS PAYMENT CUBIT 1");
    //   return r?.copyWithName(v);
    // })))));
    emit(state.copyWith(
        createOrder: state.createOrder.copyWith(
            paymentCardInfo: CraetePaymentCardInfo(
      name: CraetePaymentCardInfoName(v),
      number: state.createOrder.paymentCardInfo!.number,
      numberRef: state.createOrder.paymentCardInfo!.numberRef,
      remarks: state.createOrder.paymentCardInfo!.remarks,
    ))));
  }

  void onPaymentCardInfoNumberChanged(String v) {
    debugPrint('POS PAYMENT CUBIT $v');
    emit(state.copyWith(
        createOrder: state.createOrder.copyWith(
            paymentCardInfo: CraetePaymentCardInfo(
      name: state.createOrder.paymentCardInfo!.name,
      number: CraetePaymentCardInfoNumber(v),
      numberRef: state.createOrder.paymentCardInfo!.numberRef,
      remarks: state.createOrder.paymentCardInfo!.remarks,
    ))));
  }

  void onPaymentCardInfoNumberRefChanged(String v) {
    emit(state.copyWith(
        createOrder: state.createOrder.copyWith(
            paymentCardInfo: CraetePaymentCardInfo(
      name: state.createOrder.paymentCardInfo!.name,
      number: state.createOrder.paymentCardInfo!.number,
      numberRef: CraetePaymentCardInfoNumberRef(v),
      remarks: state.createOrder.paymentCardInfo!.remarks,
    ))));
  }

  void onPaymentCardInfoRemarksChanged(String v) {
    emit(state.copyWith(
        createOrder: state.createOrder.copyWith(
            paymentCardInfo: CraetePaymentCardInfo(
                name: state.createOrder.paymentCardInfo!.name,
                number: state.createOrder.paymentCardInfo!.number,
                numberRef: state.createOrder.paymentCardInfo!.numberRef,
                remarks: CraetePaymentCardInfoRemarks(v)))));
  }

  void onPaymentTypeChanged(int? v) {
    if (v != 1 && v != null) {
      emit(
        state.copyWith(
            createOrder: state.createOrder.copyWith(
          paymentType: CreateOrderPaymentType(v),
          // paymentCardInfo: CraetePaymentCardInfo.empty()
        )),
      );
    } else {
      emit(state.copyWith(
        createOrder: state.createOrder.copyWith(
          paymentType: CreateOrderPaymentType(v),
          //paymentCardInfo: null
        ),
      ));
    }
  }

  onCustomerChanged(CustomerModel? customer) {
    emit(state.copyWith(
      createOrder:
          state.createOrder.copyWith(customer: CreateOrderCustomer(customer)),
    ));
  }

  onVehicleChanged(VehicleModel? vehicle) {
    emit(state.copyWith(
      createOrder:
          state.createOrder.copyWith(vehicle: CreateOrderVehicle(vehicle)),
    ));
  }

  onEmployeeChanged(EmployeesModel employeeModel) {
    List<EmployeesModel> employeeModels = [];

    state.createOrder.employees.value.fold((l) {
      employeeModels.add(employeeModel);
      emit(state.copyWith(
        createOrder: state.createOrder
            .copyWith(employees: CreateOrderEmployees(employeeModels)),
      ));
    }, (r) {
      if (r != null) {
        employeeModels = List.from(r.toList());
        employeeModels.add(employeeModel);
      } else {
        employeeModels.add(employeeModel);
      }
      emit(state.copyWith(
        createOrder: state.createOrder
            .copyWith(employees: CreateOrderEmployees(employeeModels)),
      ));
    });
  }

  onEmployeeChanged1(EmployeesModel employeeModel) {
    state.createOrder.employees.value.fold((l) {}, (r) {
      List<EmployeesModel>? employeeModels = [];
      if (r != null) {
        employeeModels = List.from(r.toList());
        int index = employeeModels.indexWhere((e) => e.id == employeeModel.id);
        if (index != -1) {
          employeeModels.removeAt(index);
        }
      }
      if (employeeModels.isEmpty) {
        employeeModels = null;
      }
      emit(state.copyWith(
        createOrder: state.createOrder
            .copyWith(employees: CreateOrderEmployees(employeeModels)),
      ));
    });
  }

  onEmployeeReset() {
    emit(state.copyWith(
      createOrder:
          state.createOrder.copyWith(employees: CreateOrderEmployees(null)),
    ));
  }

  onPaymentCardInfoInit() {
    emit(state.copyWith(
      createOrder: state.createOrder
          .copyWith(paymentCardInfo: CraetePaymentCardInfo.empty()),
    ));
  }

  onPaymentCardInfoReset() {
    emit(state.copyWith(
      createOrder: state.createOrder.copyWith(paymentCardInfo: null),
    ));
  }

  onResetInitial() {
    emit(
      state.copyWith(initial: true),
    );
  }

  onReset() {
    emit(PosPaymentState.initial());
  }
}
