// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      code: json['code'] as String,
      barcode: json['barcode'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      sellPrice: json['sellPrice'] as int,
      sellDisc: (json['sellDisc'] as num?)?.toDouble(),
      purchasePrice: json['purchasePrice'] as int,
      purchaseDisc: (json['purchaseDisc'] as num?)?.toDouble(),
      stock: (json['stock'] as num?)?.toDouble(),
      category: json['category'] as int,
      image: json['image'] as String?,
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'code': instance.code,
      'barcode': instance.barcode,
      'name': instance.name,
      'description': instance.description,
      'sellPrice': instance.sellPrice,
      'sellDisc': instance.sellDisc,
      'purchasePrice': instance.purchasePrice,
      'purchaseDisc': instance.purchaseDisc,
      'stock': instance.stock,
      'category': instance.category,
      'image': instance.image,
      'accountId': instance.accountId,
    };
