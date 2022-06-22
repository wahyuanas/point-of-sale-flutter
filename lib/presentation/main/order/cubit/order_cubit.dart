import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/page_view/home/main/widget/fake_data.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';
part 'order_cubit.g.dart';

class OrderCubit extends HydratedCubit<OrderState> {
  OrderCubit() : super(OrderState.initial());

  // void OrderStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(items: state.items));
  // }

  @override
  OrderState fromJson(Map<String, dynamic> json) {
    debugPrint("Order CUBIT FROM JSON");
    return OrderState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(OrderState state) {
    debugPrint("Order CUBIT TO JSON ${state.orders}");
    return state.toJson();
  }
}
