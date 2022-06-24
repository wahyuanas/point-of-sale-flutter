import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/application/account/i_account_service.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/catalog/item/object_value/item_object_value.dart';
import 'package:pos/domain/catalog/item/object_value/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/catalog/list/cubit/catalog_list_cubit.dart';

part 'catalog_form_create_state.dart';
part 'catalog_form_create_cubit.freezed.dart';

class CatalogFormCreateCubit extends Cubit<CatalogFormCreateState> {
  final CatalogListCubit catalogListCubit;
  @override
  CatalogFormCreateCubit({required this.catalogListCubit})
      : _catalogListCubit = catalogListCubit,
        super(CatalogFormCreateState.initial());

  final CatalogListCubit _catalogListCubit;

  void onCreateCatalogItemCodeChanged(String v) {
    emit(state.copyWith(
      createCatalogItem:
          state.createCatalogItem.copyWith(code: CreateCatalogItemCode(v)),
    ));
  }

  void onCreateCatalogItemBarcodeChanged(String v) {
    emit(state.copyWith(
      createCatalogItem: state.createCatalogItem
          .copyWith(barcode: CreateCatalogItemBarcode(v)),
    ));
  }

  void onCreateCatalogItemNameChanged(String v) {
    emit(state.copyWith(
      createCatalogItem:
          state.createCatalogItem.copyWith(name: CreateCatalogItemName(v)),
    ));
  }

  void onCreateCatalogItemDescriptionChanged(String v) {
    emit(state.copyWith(
      createCatalogItem: state.createCatalogItem
          .copyWith(description: CreateCatalogItemDescription(v)),
    ));
  }

  void onCreateCatalogItemSellPriceChanged(String v) {
    emit(state.copyWith(
      createCatalogItem: state.createCatalogItem
          .copyWith(sellPrice: CreateCatalogItemSellPrice(v)),
    ));
  }

  void onCreateCatalogItemSellDiscChanged(String v) {
    emit(state.copyWith(
      createCatalogItem: state.createCatalogItem
          .copyWith(sellDisc: CreateCatalogItemSellDisc(v)),
    ));
  }

  void onCreateCatalogItemPurchasePriceChanged(String v) {
    emit(state.copyWith(
      createCatalogItem: state.createCatalogItem
          .copyWith(purchasePrice: CreateCatalogItemPurchasePrice(v)),
    ));
  }

  void onCreateCatalogItemPurchaseDiscChanged(String v) {
    emit(state.copyWith(
      createCatalogItem: state.createCatalogItem
          .copyWith(purchaseDisc: CreateCatalogItemPurchaseDisc(v)),
    ));
  }

  void onCreateCatalogItemStockChanged(String v) {
    emit(state.copyWith(
      createCatalogItem:
          state.createCatalogItem.copyWith(stock: CreateCatalogItemStock(v)),
    ));
  }

  void onCreateCatalogItemCategoryChanged(String v) {
    emit(state.copyWith(
      createCatalogItem: state.createCatalogItem
          .copyWith(category: CreateCatalogItemCategory(v)),
    ));
  }
}
