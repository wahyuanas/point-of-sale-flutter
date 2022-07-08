import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/payment_card_info/entity/payment_card_info.dart';

part 'payment_card_info_list_state.dart';
part 'payment_card_info_list_cubit.freezed.dart';
part 'payment_card_info_list_cubit.g.dart';

class PaymentCardInfoListCubit extends HydratedCubit<PaymentCardInfoListState> {
  PaymentCardInfoListCubit() : super(PaymentCardInfoListState.initial());

  // void catalogStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(PaymentCardInfos: state.PaymentCardInfos));
  // }

  onAddPaymentCardInfo(PaymentCardInfo paymentCardInfo) {
    List<PaymentCardInfo>? paymentCardInfos = [];
    if (state.paymentCardInfos != null) {
      paymentCardInfos = List.from(state.paymentCardInfos!.toList());
      paymentCardInfos.add(paymentCardInfo);
    } else {
      paymentCardInfos.add(paymentCardInfo);
    }
    if (paymentCardInfos.isEmpty) {
      paymentCardInfos = null;
    }
    emit(state.copyWith(
      paymentCardInfos: paymentCardInfos,
    ));
  }

  @override
  PaymentCardInfoListState fromJson(Map<String, dynamic> json) {
    debugPrint("Castomer CUBIT FROM JSON");
    return PaymentCardInfoListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(PaymentCardInfoListState state) {
    debugPrint("Catalog CUBIT TO JSON ${state.paymentCardInfos}");
    return state.toJson();
  }
}
