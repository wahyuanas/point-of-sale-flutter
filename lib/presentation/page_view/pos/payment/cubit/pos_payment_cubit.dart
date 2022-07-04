import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/domain/order/entity/order.dart';
import 'package:pos/domain/order/object_value/object_value.dart';
import 'package:pos/domain/order/object_value/order_object_value.dart';
import 'package:pos/domain/payment_card_info/object_value/object_value.dart';
import 'package:pos/domain/payment_card_info/object_value/payment_card_info_object_value.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/customer/model/customer_model.dart';
import 'package:pos/presentation/main/vehicle/model/vehicle_model.dart';

part 'pos_payment_state.dart';
part 'pos_payment_cubit.freezed.dart';

class PosPaymentCubit extends Cubit<PosPaymentState> {
  PosPaymentCubit() : super(PosPaymentState.initial());

  void onPaymentCardInfoNameChanged(String v) {
    // emit(state.copyWith(
    //     createOrder: state.createOrder?.copyWith(
    //         paymentCardInfo: CreateOrderPaymentCardInfo(
    //             state.createOrder?.paymentCardInfo.value.fold((l) {
    //   debugPrint("POS PAYMENT CUBIT 3");
    //   return null;
    // }, (r) {
    //   debugPrint("POS PAYMENT CUBIT 1");
    //   return r?.copyWithName(v);
    // })))));

    emit(state.copyWith(
        createOrder: state.createOrder?.copyWith(
            paymentCardInfo: state.createOrder!.paymentCardInfo
                ?.copyWith(name: CraetePaymentCardInfoName(v)))));
  }

  void onPaymentCardInfoNumberChanged(String v) {
    state.copyWith(
        createOrder: state.createOrder?.copyWith(
            paymentCardInfo: state.createOrder!.paymentCardInfo
                ?.copyWith(number: CraetePaymentCardInfoNumber(v))));
  }

  void onPaymentCardInfoNumberRefChanged(String v) {
    state.copyWith(
        createOrder: state.createOrder?.copyWith(
            paymentCardInfo: state.createOrder!.paymentCardInfo
                ?.copyWith(numberRef: CraetePaymentCardInfoNumberRef(v))));
  }

  void onPaymentCardInfoRemarksChanged(String v) {
    state.copyWith(
        createOrder: state.createOrder?.copyWith(
            paymentCardInfo: state.createOrder!.paymentCardInfo
                ?.copyWith(remarks: CraetePaymentCardInfoRemarks(v))));
  }

  void onPaymentTypeChanged(int? v) {
    if (v != 1 && v != null) {
      emit(
        state.copyWith(
            createOrder: state.createOrder?.copyWith(
                paymentType: CreateOrderPaymentType(v),
                paymentCardInfo: CraetePaymentCardInfo.empty())),
      );
    } else {
      emit(state.copyWith(
        createOrder: state.createOrder?.copyWith(
            paymentType: CreateOrderPaymentType(v), paymentCardInfo: null),
      ));
    }
  }

  onCustomerChanged(CustomerModel? customer) {
    emit(state.copyWith(
      createOrder:
          state.createOrder?.copyWith(customer: CreateOrderCustomer(customer)),
    ));
  }

  onVehicleChanged(VehicleModel? vehicle) {
    emit(state.copyWith(
      createOrder:
          state.createOrder?.copyWith(vehicle: CreateOrderVehicle(vehicle)),
    ));
  }

  onReset() {
    emit(PosPaymentState.initial());
  }
}
