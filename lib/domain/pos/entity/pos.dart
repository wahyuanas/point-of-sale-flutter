import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'pos.freezed.dart';
part 'pos.g.dart';

@freezed
class Pos with _$Pos implements IEntity {
  const Pos._();
  const factory Pos({
    required int? sumPrice,
    required int? qty,
    required Item item,
  }) = _Pos;

  factory Pos.fromJson(Map<String, dynamic> json) => _$PosFromJson(json);
}
