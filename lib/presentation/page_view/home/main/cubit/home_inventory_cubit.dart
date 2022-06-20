import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/fake_data.dart';

part 'home_inventory_state.dart';
part 'home_inventory_cubit.freezed.dart';

class HomeInventoryCubit extends Cubit<HomeInventoryState> {
  HomeInventoryCubit() : super(HomeInventoryState.initial());
  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<Inventory>? listInventory; //= List.from(state.items!.toList());
      listInventory = inventories
          .where((inventory) =>
              inventory.name.toLowerCase().contains(v.toLowerCase()) ||
              inventory.code.toLowerCase().contains(v.toLowerCase()))
          .toList();
      if (listInventory.isEmpty) {
        listInventory = null;
      }
      emit(state.copyWith(inventories: listInventory));
    } else {
      emit(HomeInventoryState.initial());
    }
  }

  onReset() {
    emit(HomeInventoryState.initial());
  }
}
