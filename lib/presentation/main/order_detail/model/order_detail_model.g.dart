// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailModel _$$_OrderDetailModelFromJson(Map<String, dynamic> json) =>
    _$_OrderDetailModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      orderId: json['orderId'] as int,
      item: json['item'] == null
          ? null
          : ItemModel.fromJson(json['item'] as Map<String, dynamic>),
      accountId: json['accountId'] as int,
    );

Map<String, dynamic> _$$_OrderDetailModelToJson(_$_OrderDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'orderId': instance.orderId,
      'item': instance.item,
      'accountId': instance.accountId,
    };
