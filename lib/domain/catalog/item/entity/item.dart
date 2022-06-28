import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';
import 'package:uuid/uuid.dart';

import '../object_value/item_object_value.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item implements IEntity {
  const Item._();
  const factory Item({
    required int id,
    required String uuid,
    required String code,
    required String? barcode,
    required String name,
    required String description,
    required int sellPrice,
    required int? sellDisc,
    required int purchasePrice,
    required int? purchaseDisc,
    required double? stock,
    required int category,
    required String? image,
    required int accountId,
  }) = _Item;

  factory Item.createCatalogItem(int id, CreateCatalogItem createCatalogItem) {
    return Item(
        id: id,
        uuid: const Uuid().v4(),
        code: createCatalogItem.code.getOrCrash(),
        barcode: createCatalogItem.barcode.getOrCrash(),
        name: createCatalogItem.name.getOrCrash(),
        description: createCatalogItem.description.getOrCrash(),
        sellPrice: createCatalogItem.sellPrice.getOrCrash(),
        sellDisc: createCatalogItem.sellDisc.getOrCrash(),
        purchasePrice: createCatalogItem.purchasePrice.getOrCrash(),
        purchaseDisc: createCatalogItem.purchaseDisc.getOrCrash(),
        stock: createCatalogItem.stock.getOrCrash(),
        category: createCatalogItem.category.getOrCrash(),
        image: createCatalogItem.image.getOrCrash(),
        accountId: 1);
  }

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
