import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/order_detail/entity/order_detail.dart';

part 'order_detail_state.dart';
part 'order_detail_cubit.freezed.dart';
part 'order_detail_cubit.g.dart';

class OrderDetailCubit extends HydratedCubit<OrderDetailState> {
  OrderDetailCubit() : super(OrderDetailState.initial());

  // void OrderDetailStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(items: state.items));
  // }

  @override
  OrderDetailState fromJson(Map<String, dynamic> json) {
    debugPrint("OrderDetail CUBIT FROM JSON");
    return OrderDetailState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(OrderDetailState state) {
    debugPrint("OrderDetail CUBIT TO JSON ${state.orderDetails}");
    return state.toJson();
  }
}
