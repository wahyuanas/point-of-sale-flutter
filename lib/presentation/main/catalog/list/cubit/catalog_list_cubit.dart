import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/presentation/page_view/home/main/widget/fake_data.dart';

part 'catalog_list_state.dart';
part 'catalog_list_cubit.freezed.dart';
part 'catalog_list_cubit.g.dart';

class CatalogListCubit extends HydratedCubit<CatalogListState> {
  CatalogListCubit() : super(CatalogListState.initial());

  // void catalogStarted() async {
  //   //await Future<void>.delayed(const Duration(seconds: 1));
  //   emit(state.copyWith(items: state.items));
  // }

  onAdditem(Item item) {
    List<Item> items = [];
    if (state.items != null) {
      items = List.from(state.items!.toList());
      items.add(item);
    } else {
      items.add(item);
    }
    emit(state.copyWith(
      items: items,
    ));
  }

  @override
  CatalogListState fromJson(Map<String, dynamic> json) {
    debugPrint("Catalog CUBIT FROM JSON");
    return CatalogListState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CatalogListState state) {
    debugPrint("Catalog CUBIT TO JSON ${state.items}");
    return state.toJson();
  }
}
