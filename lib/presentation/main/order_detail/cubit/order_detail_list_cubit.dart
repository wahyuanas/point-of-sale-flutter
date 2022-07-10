import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/order_detail/entity/order_detail.dart';

part 'order_detail_list_state.dart';
part 'order_detail_list_cubit.freezed.dart';
part 'order_detail_list_cubit.g.dart';

class OrderDetailListCubit extends HydratedCubit<OrderDetailListState> {
  OrderDetailListCubit() : super(OrderDetailListState.initial());

  // void OrderDetailListStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(items: state.items));
  // }

  onAddOrderDetail(OrderDetail orderDetail) {
    List<OrderDetail>? orderDetails = [];
    if (state.orderDetails != null) {
      orderDetails = List.from(state.orderDetails!.toList());
      orderDetails.add(orderDetail);
    } else {
      orderDetails.add(orderDetail);
    }
    if (orderDetails.isEmpty) {
      orderDetails = null;
    }
    emit(state.copyWith(
      orderDetails: orderDetails,
    ));
  }

  @override
  OrderDetailListState fromJson(Map<String, dynamic> json) {
    debugPrint("OrderDetailList CUBIT FROM JSON");
    return OrderDetailListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(OrderDetailListState state) {
    debugPrint("OrderDetailList CUBIT TO JSON ${state.orderDetails}");
    return state.toJson();
  }
}
