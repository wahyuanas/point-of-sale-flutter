import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/page_view/home/widget/main/fake_data.dart';

part 'pos_catalog_state.dart';
part 'pos_catalog_cubit.freezed.dart';

class PosCatalogCubit extends Cubit<PosCatalogState> {
  PosCatalogCubit() : super(PosCatalogState.initial());
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
      emit(PosCatalogState.initial());
    }
  }

  onReset() {
    emit(PosCatalogState.initial());
  }
}
