import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/order/entity/order.dart';

part 'home_order_state.dart';
part 'home_order_cubit.freezed.dart';

class HomeOrderCubit extends Cubit<HomeOrderState> {
  HomeOrderCubit() : super(HomeOrderState.initial());
  // onSearchKeyChanged(String v) {
  //   if (v.isNotEmpty) {
  //     List<Order>? listIOrder; //= List.from(state.items!.toList());
  //     listIOrder = orders
  //         .where((order) =>
  //             order.withName.toLowerCase().contains(v.toLowerCase()) ||
  //             order.code.toLowerCase().contains(v.toLowerCase()))
  //         .toList();
  //     if (listIOrder.isEmpty) {
  //       listIOrder = null;
  //     }
  //     emit(state.copyWith(orders: listIOrder));
  //   } else {
  //     emit(HomeOrderState.initial());
  //   }
  // }

  onReset() {
    emit(HomeOrderState.initial());
  }
}
