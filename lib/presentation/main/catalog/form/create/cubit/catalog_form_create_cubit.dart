import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/catalog/item/object_value/item_object_value.dart';
import 'package:pos/domain/catalog/item/object_value/object_value.dart';
import 'package:pos/domain/exception/failure/failure_exceptions.dart';
import 'package:pos/presentation/common/state/state_status.dart';
import 'package:pos/presentation/main/catalog/list/cubit/catalog_list_cubit.dart';
import 'package:uuid/uuid.dart';

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

  void onCreateCatalogItemPurchaseDiscChanged(String? v) {
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

  void onCreateCatalogItemImageChanged(String? v) {
    emit(state.copyWith(
      createCatalogItem:
          state.createCatalogItem.copyWith(image: CreateCatalogItemImage(v)),
    ));
  }

  void onCreateCatalogItemImageFileChanged(XFile? v) {
    emit(state.copyWith(
      createCatalogItem: state.createCatalogItem
          .copyWith(imageFile: CreateCatalogItemImageFile(v)),
    ));
  }

  onCreate() async {
    if (state.createCatalogItem.failureOption.isSome()) {
      emit(state.copyWith(initial: false));
    } else {
      emit(state.copyWith(status: const StateStatus.loading()));
      //final failureOrSuccess = await accountService.signUp(state.signUp);
      await Future.delayed(const Duration(microseconds: 500));
      int id = _catalogListCubit.state.items == null
          ? 1
          : _catalogListCubit.state.items!.length + 1;
      final r = Item(
          id: id,
          uuid: const Uuid().v4(),
          code: state.createCatalogItem.code.getOrCrash(),
          barcode: state.createCatalogItem.barcode.getOrCrash(),
          name: state.createCatalogItem.name.getOrCrash(),
          description: state.createCatalogItem.description.getOrCrash(),
          sellPrice: state.createCatalogItem.sellPrice.getOrCrash(),
          sellDisc: state.createCatalogItem.sellDisc.getOrCrash(),
          purchasePrice: state.createCatalogItem.purchasePrice.getOrCrash(),
          purchaseDisc: state.createCatalogItem.purchaseDisc.getOrCrash(),
          stock: state.createCatalogItem.stock.getOrCrash(),
          category: state.createCatalogItem.category.getOrCrash(),
          image: state.createCatalogItem.image.getOrCrash(),
          accountId: 1
          //imageFile: state.createCatalogItem.imageFile.getOrCrash()
          );
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(status: StateStatus.success(data: r)));
      _catalogListCubit.onAdditem(r);

      // failureOrSuccess.fold(
      //     (l) => emit(state.copyWith(status: StateStatus.failure(failure: l))),
      //     (r) => emit(state.copyWith(status: StateStatus.success(data: r))));
    }
  }

  onInitial() {
    emit(CatalogFormCreateState.initial());
  }
}
