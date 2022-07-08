import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/order/entity/order.dart';

part 'order_list_state.dart';
part 'order_list_cubit.freezed.dart';
part 'order_list_cubit.g.dart';

class OrderListCubit extends HydratedCubit<OrderListState> {
  OrderListCubit() : super(OrderListState.initial());

  onAddOrder(Order order) {
    List<Order>? orders = [];
    if (state.orders != null) {
      orders = List.from(state.orders!.toList());
      orders.add(order);
    } else {
      orders.add(order);
    }
    if (orders.isEmpty) {
      orders = null;
    }
    emit(state.copyWith(
      orders: orders,
    ));
  }

  @override
  OrderListState fromJson(Map<String, dynamic> json) {
    debugPrint("Order CUBIT FROM JSON");
    return OrderListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(OrderListState state) {
    debugPrint("Order CUBIT TO JSON ${state.orders}");
    return state.toJson();
  }
}
