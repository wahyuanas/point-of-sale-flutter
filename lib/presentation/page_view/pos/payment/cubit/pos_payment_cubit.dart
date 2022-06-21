import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/page_view/home/main/widget/fake_data.dart';

part 'pos_payment_state.dart';
part 'pos_payment_cubit.freezed.dart';

class PosPaymentCubit extends Cubit<PosPaymentState> {
  PosPaymentCubit() : super(PosPaymentState.initial());
  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<Item>? listItem; //= List.from(state.items!.toList());
      listItem = itemPos
          .where((item) => item.name.toLowerCase().contains(v.toLowerCase()))
          .toList();
      if (listItem.isEmpty) {
        listItem = null;
      }
      emit(state.copyWith(items: listItem));
    } else {
      emit(PosPaymentState.initial());
    }
  }

  onReset() {
    emit(PosPaymentState.initial());
  }
}
