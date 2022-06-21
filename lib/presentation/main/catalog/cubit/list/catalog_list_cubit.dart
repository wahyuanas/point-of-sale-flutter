import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';

part 'catalog_list_state.dart';
part 'catalog_list_cubit.freezed.dart';
part 'catalog_list_cubit.g.dart';

class CatalogCubit extends HydratedCubit<CatalogState> {
  CatalogCubit() : super(CatalogState.initial());

  void CatalogStarted() async {
    //await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(items: state.items));
  }

  @override
  CatalogState fromJson(Map<String, dynamic> json) {
    debugPrint("Catalog CUBIT FROM JSON");
    return CatalogState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(CatalogState state) {
    debugPrint("Catalog CUBIT TO JSON ${state.items}");
    return state.toJson();
  }
}
