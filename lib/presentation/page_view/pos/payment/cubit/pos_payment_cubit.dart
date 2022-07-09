import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/domain/order/entity/order.dart';
import 'package:pos/domain/order/object_value/object_value.dart';
import 'package:pos/domain/order/object_value/order_object_value.dart';
import 'package:pos/domain/payment_card_info/entity/payment_card_info.dart';
import 'package:pos/domain/payment_card_info/object_value/object_value.dart';
import 'package:pos/domain/payment_card_info/object_value/payment_card_info_object_value.dart';
import 'package:pos/domain/pos/entity/pos.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';
import 'package:pos/presentation/main/employee/model/employees_model.dart';
import 'package:pos/presentation/main/order/cubit/order_list_cubit.dart';
import 'package:pos/presentation/main/payment_card_info/list/cubit/payment_card_info_list_cubit.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';
import 'package:pos/presentation/page_view/pos/main/bloc/pos_main_bloc.dart';

part 'pos_payment_state.dart';
part 'pos_payment_cubit.freezed.dart';

class PosPaymentCubit extends Cubit<PosPaymentState> {
  final PosMainBloc posMainBloc;
  final OrderListCubit orderListCubit;
  final PaymentCardInfoListCubit paymentCardInfoListCubit;
  PosPaymentCubit(
      {required this.posMainBloc,
      required this.orderListCubit,
      required this.paymentCardInfoListCubit})
      : _posMainBloc = posMainBloc,
        _orderListCubit = orderListCubit,
        _paymentCardInfoListCubit = paymentCardInfoListCubit,
        super(PosPaymentState.initial()) {
    //onGrandAmountChanged();
    _subscriptionuPosMainBloc = _posMainBloc.stream.listen((posMainState) {
      debugPrint("POS PAYMENT CUBIT GRAND LISTEN");
      onPosChanged(posMainState);
    });
  }

  final PosMainBloc _posMainBloc;
  final OrderListCubit _orderListCubit;
  final PaymentCardInfoListCubit _paymentCardInfoListCubit;
  late StreamSubscription _subscriptionuPosMainBloc;

  void onPaymentCardInfoIdChanged(int? v) {
    emit(state.copyWith(
        createOrder: state.createOrder.copyWith(
            paymentCardInfo: CraetePaymentCardInfo(
      id: CraetePaymentCardInfoId(v),
      name: state.createOrder.paymentCardInfo!.name,
      number: state.createOrder.paymentCardInfo!.number,
      numberRef: state.createOrder.paymentCardInfo!.numberRef,
      remarks: state.createOrder.paymentCardInfo!.remarks,
    ))));
  }

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
      id: CraetePaymentCardInfoId(null),
      name: CraetePaymentCardInfoName(v),
      number: state.createOrder.paymentCardInfo!.number,
      numberRef: state.createOrder.paymentCardInfo!.numberRef,
      remarks: state.createOrder.paymentCardInfo!.remarks,
    ))));
  }

  void onPaymentCardInfoNumberChanged(String v) {
    emit(state.copyWith(
        createOrder: state.createOrder.copyWith(
            paymentCardInfo: CraetePaymentCardInfo(
      id: CraetePaymentCardInfoId(null),
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
      id: CraetePaymentCardInfoId(null),
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
                id: CraetePaymentCardInfoId(null),
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

  onDiscChanged(String? disc) {
    emit(state.copyWith(
      createOrder: state.createOrder.copyWith(disc: CreateOrderDisc(disc)),
    ));
    //onGrandAmountChanged();
  }

  onChargeChanged(String? charge) {
    emit(state.copyWith(
      createOrder:
          state.createOrder.copyWith(charge: CreateOrderCharge(charge)),
    ));
    //onGrandAmountChanged();
  }

  onTaxChanged(int? tax) {
    emit(state.copyWith(
      createOrder: state.createOrder.copyWith(tax: CreateOrderTax(tax)),
    ));
    //onGrandAmountChanged();
  }

  onPaidAmountChanged(String paidAmount) async {
    emit(state.copyWith(
      createOrder: state.createOrder
          .copyWith(paidAmount: CreateOrderPaidAmount(paidAmount)),
    ));

    int? grandAmount;
    int? paidAmountt;
    await state.createOrder.grandAmount.value.fold((l) async => grandAmount = 0,
        (r) async => grandAmount = (grandAmount ?? 0) + (r ?? 0));

    await state.createOrder.paidAmount.value.fold(
        (l) async => paidAmountt = null,
        (r) async => paidAmountt = (paidAmountt ?? 0) + r);

    // if ((paidAmountt ?? 0) < (grandAmount ?? 0)) {
    //   onChangeAmountChanged(null);
    // }
    if (paidAmountt == null) {
      onChangeAmountChanged(null);
    } else {
      onChangeAmountChanged((paidAmountt ?? 0) - (grandAmount ?? 0));
    }
  }

  onChangeAmountChanged(int? changeAmount) {
    emit(state.copyWith(
      createOrder: state.createOrder
          .copyWith(changeAmount: CreateOrderChangeAmount(changeAmount)),
    ));
  }

  onGrandAmountChanged(int? grandAmount) async {
    // int? grandAmount;
    // state.poss?.forEach((pos) {
    //   grandAmount = (grandAmount ?? 0) + (pos.sumPrice ?? 0);
    // });
    // await state.createOrder.charge.value.fold(
    //     (l) => null, (r) async => grandAmount = (grandAmount ?? 0) + (r ?? 0));

    // await state.createOrder.disc.value.fold((l) => null, (r) async {
    //   debugPrint("POS PAYMENT CUBIT GRAND Y $grandAmount $r");
    //   grandAmount = ((grandAmount ?? 0) -
    //       ((grandAmount ?? 0) * ((r ?? 0) / 100)).round());
    //   debugPrint("POS PAYMENT CUBIT GRAND zz $grandAmount $r");
    // });
    // debugPrint("POS PAYMENT CUBIT GRAND $grandAmount");
    // await state.createOrder.tax.value.fold(
    //     (l) => null, (r) async => grandAmount = (grandAmount ?? 0) + (r ?? 0));
    // if (grandAmount == 0) {
    //   grandAmount = null;
    // }
    emit(state.copyWith(
      createOrder: state.createOrder
          .copyWith(grandAmount: CreateOrderGrandAmount(grandAmount)),
    ));

    int? paidAmountt;

    await state.createOrder.paidAmount.value.fold(
        (l) async => paidAmountt = null,
        (r) async => paidAmountt = (paidAmountt ?? 0) + r);

    // if ((paidAmountt ?? 0) < (grandAmount ?? 0)) {
    //   onChangeAmountChanged(null);
    // }
    if (paidAmountt == null) {
      onChangeAmountChanged(null);
    } else {
      onChangeAmountChanged((paidAmountt ?? 0) - (grandAmount ?? 0));
    }
  }

  onPaidStatusChanged(int? paidStatus) {
    emit(state.copyWith(
      createOrder: state.createOrder
          .copyWith(paidStatus: CreateOrderPaidStatus(paidStatus)),
    ));
  }

  onAmountChanged(int? amount) {
    emit(state.copyWith(
      createOrder:
          state.createOrder.copyWith(amount: CreateOrderAmount(amount)),
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

  @override
  Future<void> close() {
    _subscriptionuPosMainBloc.cancel();
    return super.close();
  }

  void onPosChanged(PosMainState posMainState) {
    emit(state.copyWith(poss: posMainState.poss));
  }

  void onPay() async {
    if (state.createOrder.failureOption.isSome() ||
        (state.createOrder.paymentCardInfo != null
            ? state.createOrder.paymentCardInfo!.failureOption.isSome()
            : false)) {
      emit(state.copyWith(initial: false));
      await Future.delayed(const Duration(microseconds: 500));
      emit(state.copyWith(initial: true));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      //final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(microseconds: 500));

      final id = _paymentCardInfoListCubit.state.paymentCardInfos == null
          ? 1
          : _paymentCardInfoListCubit.state.paymentCardInfos!.last.id + 1;

      PaymentCardInfo r = PaymentCardInfo.createPaymentCardInfo(
          id, state.createOrder.paymentCardInfo);
      onPaymentCardInfoIdChanged(id);
      final ids = _orderListCubit.state.orders == null
          ? 1
          : _orderListCubit.state.orders!.last.id + 1;

      Order o = Order.createOrder(ids, state.createOrder);
      await Future.delayed(const Duration(milliseconds: 500));
      _paymentCardInfoListCubit.onAddPaymentCardInfo(r);

      emit(state.copyWith(status: StateStatus.success(data: o)));
      _orderListCubit.onAddOrder(o);

      // failureOrSuccess.fold(
      //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
      //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));

    }
  }
}
