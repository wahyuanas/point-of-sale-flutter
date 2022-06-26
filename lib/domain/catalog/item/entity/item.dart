import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item implements IEntity {
  const Item._();
  const factory Item({
    required int id,
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
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
