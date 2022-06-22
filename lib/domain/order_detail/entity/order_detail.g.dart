// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetail _$$_OrderDetailFromJson(Map<String, dynamic> json) =>
    _$_OrderDetail(
      id: json['id'] as int,
      orderId: json['orderId'] as int,
      itemId: json['itemId'] as int,
      price: json['price'] as int,
      qty: json['qty'] as int,
      disc: json['disc'] as int,
    );

Map<String, dynamic> _$$_OrderDetailToJson(_$_OrderDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'itemId': instance.itemId,
      'price': instance.price,
      'qty': instance.qty,
      'disc': instance.disc,
    };
