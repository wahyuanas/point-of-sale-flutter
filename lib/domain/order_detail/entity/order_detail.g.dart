// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetail _$$_OrderDetailFromJson(Map<String, dynamic> json) =>
    _$_OrderDetail(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      orderId: json['orderId'] as int,
      item: Item.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderDetailToJson(_$_OrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'orderId': instance.orderId,
      'item': instance.item,
    };
