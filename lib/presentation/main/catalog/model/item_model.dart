import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const ItemModel._();
  const factory ItemModel({
    required int id,
    required String uuid,
    required String code,
    required String? barcode,
    required String name,
    required String description,
    required int sellPrice,
    required double? sellDisc,
    required int purchasePrice,
    required double? purchaseDisc,
    required double? stock,
    required int category,
    required String? image,
    required int accountId,
  }) = _ItemModel;

  factory ItemModel.item(Item item) {
    return ItemModel(
        id: item.id,
        uuid: item.uuid,
        code: item.code,
        barcode: item.barcode,
        name: item.name,
        description: item.description,
        sellPrice: item.sellPrice,
        sellDisc: item.sellDisc,
        purchasePrice: item.purchasePrice,
        purchaseDisc: item.purchaseDisc,
        stock: item.stock,
        category: item.category,
        image: item.image,
        accountId: item.accountId);
  }

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);
}
