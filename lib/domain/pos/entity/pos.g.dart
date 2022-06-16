// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pos _$$_PosFromJson(Map<String, dynamic> json) => _$_Pos(
      sumPrice: json['sumPrice'] as int?,
      item: Item.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PosToJson(_$_Pos instance) => <String, dynamic>{
      'sumPrice': instance.sumPrice,
      'item': instance.item,
    };
