import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/main/catalog/list/cubit/catalog_list_cubit.dart';
import 'package:pos/presentation/page_view/home/main/widget/fake_data.dart';

part 'pos_catalog_list_state.dart';
part 'pos_catalog_list_cubit.freezed.dart';

class PosCatalogListCubit extends Cubit<PosCatalogListState> {
  final CatalogListCubit catalogListCubit;
  PosCatalogListCubit({required this.catalogListCubit})
      : _catalogListCubit = catalogListCubit,
        super(PosCatalogListState.initial()) {
    _catalogSubscription = _catalogListCubit.stream.listen((catalogState) {
      onCatalogChannged(catalogState);
    });
  }
  final CatalogListCubit _catalogListCubit;
  late StreamSubscription _catalogSubscription;
  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<Item>? listItem; //= List.from(state.items!.toList());
      listItem = catalogListCubit.state.items
          ?.where((item) => item.name.toLowerCase().contains(v.toLowerCase()))
          .toList();
      emit(state.copyWith(items: listItem, keyWord: v));
    } else {
      emit(PosCatalogListState.initial());
    }
  }

  onReset() {
    emit(PosCatalogListState.initial());
  }

  onCatalogChannged(CatalogListState catalogState) {
    if (state.keyWord == null) {
      emit(state.copyWith(items: catalogState.items));
    } else {
      List<Item>? listItem; //= List.from(state.items!.toList());
      listItem = catalogListCubit.state.items
          ?.where((item) =>
              item.name.toLowerCase().contains(state.keyWord!.toLowerCase()))
          .toList();
      emit(state.copyWith(items: listItem));
    }
  }

  @override
  Future<void> close() {
    _catalogSubscription.cancel();
    return super.close();
  }
}
