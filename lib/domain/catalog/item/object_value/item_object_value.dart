import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/failures.dart';

import 'object_value.dart';

part "item_object_value.freezed.dart";

@freezed
class CreateCatalogItem with _$CreateCatalogItem {
  const factory CreateCatalogItem({
    required CreateCatalogItemCode code,
    required CreateCatalogItemBarcode barcode,
    required CreateCatalogItemName name,
    required CreateCatalogItemDescription description,
    required CreateCatalogItemSellPrice sellPrice,
    required CreateCatalogItemSellDisc sellDisc,
    required CreateCatalogItemPurchasePrice purchasePrice,
    required CreateCatalogItemPurchaseDisc purchaseDisc,
    required CreateCatalogItemStock stock,
    required CreateCatalogItemCategory category,
    required CreateCatalogItemImage image,
  }) = _CreateCatalogItem;

  factory CreateCatalogItem.empty() => CreateCatalogItem(
      code: CreateCatalogItemCode(''),
      barcode: CreateCatalogItemBarcode(null),
      name: CreateCatalogItemName(''),
      description: CreateCatalogItemDescription(''),
      sellPrice: CreateCatalogItemSellPrice(''),
      sellDisc: CreateCatalogItemSellDisc(null),
      purchasePrice: CreateCatalogItemPurchasePrice(''),
      purchaseDisc: CreateCatalogItemPurchaseDisc(null),
      stock: CreateCatalogItemStock(''),
      category: CreateCatalogItemCategory(''),
      image: CreateCatalogItemImage(null));
}

extension CreateCatalogItemX on CreateCatalogItem {
  Option<ObjectValueFailure> get failureOption {
    return code.failureOrUnit
        .andThen(name.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(sellPrice.failureOrUnit)
        .andThen(sellDisc.failureOrUnit)
        .andThen(purchasePrice.failureOrUnit)
        .andThen(purchaseDisc.failureOrUnit)
        .andThen(stock.failureOrUnit)
        .andThen(category.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}

@freezed
class EditCatalogItem with _$EditCatalogItem {
  const factory EditCatalogItem({
    required EditCatalogItemId ids,
    required EditCatalogItemCode code,
    required EditCatalogItemBarcode barcode,
    required EditCatalogItemName name,
    required EditCatalogItemDescription description,
    required EditCatalogItemSellPrice sellPrice,
    required EditCatalogItemSellDisc sellDisc,
    required EditCatalogItemPurchasePrice purchasePrice,
    required EditCatalogItemPurchaseDisc purchaseDisc,
    required EditCatalogItemStock stock,
    required EditCatalogItemCategory category,
    required EditCatalogItemImage image,
  }) = _EditCatalogItem;

  factory EditCatalogItem.empty() => EditCatalogItem(
      ids: EditCatalogItemId(''),
      code: EditCatalogItemCode(''),
      barcode: EditCatalogItemBarcode(null),
      name: EditCatalogItemName(''),
      description: EditCatalogItemDescription(''),
      sellPrice: EditCatalogItemSellPrice(''),
      sellDisc: EditCatalogItemSellDisc(null),
      purchasePrice: EditCatalogItemPurchasePrice(''),
      purchaseDisc: EditCatalogItemPurchaseDisc(null),
      stock: EditCatalogItemStock(''),
      category: EditCatalogItemCategory(''),
      image: EditCatalogItemImage(null));
}

extension EditCatalogItemX on EditCatalogItem {
  Option<ObjectValueFailure> get failureOption {
    return ids.failureOrUnit
        .andThen(code.failureOrUnit)
        .andThen(name.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(sellPrice.failureOrUnit)
        .andThen(sellDisc.failureOrUnit)
        .andThen(purchasePrice.failureOrUnit)
        .andThen(purchaseDisc.failureOrUnit)
        .andThen(stock.failureOrUnit)
        .andThen(category.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
