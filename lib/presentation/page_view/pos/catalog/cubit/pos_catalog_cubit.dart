import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/main/catalog/cubit/list/catalog_list_cubit.dart';
import 'package:pos/presentation/page_view/home/main/widget/fake_data.dart';

part 'pos_catalog_state.dart';
part 'pos_catalog_cubit.freezed.dart';

class PosCatalogCubit extends Cubit<PosCatalogState> {
  final CatalogCubit catalogCubit;
  PosCatalogCubit({required this.catalogCubit})
      : _catalogCubit = catalogCubit,
        super(PosCatalogState.initial()) {
    _catalogSubscription = _catalogCubit.stream.listen((catalogState) {
      onCatalogChannged(catalogState);
    });
  }
  final CatalogCubit _catalogCubit;
  late StreamSubscription _catalogSubscription;
  onSearchKeyChanged(String v) {
    if (v.isNotEmpty) {
      List<Item>? listItem; //= List.from(state.items!.toList());
      listItem = catalogCubit.state.items
          ?.where((item) => item.name.toLowerCase().contains(v.toLowerCase()))
          .toList();
      emit(state.copyWith(items: listItem, keyWord: v));
    } else {
      emit(PosCatalogState.initial());
    }
  }

  onReset() {
    emit(PosCatalogState.initial());
  }

  onCatalogChannged(CatalogState catalogState) {
    if (state.keyWord == null) {
      emit(state.copyWith(items: catalogState.items));
    } else {
      List<Item>? listItem; //= List.from(state.items!.toList());
      listItem = catalogCubit.state.items
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
