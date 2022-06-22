// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailState _$$_OrderDetailStateFromJson(Map<String, dynamic> json) =>
    _$_OrderDetailState(
      orderDetails: (json['orderDetails'] as List<dynamic>?)
          ?.map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDetailStateToJson(_$_OrderDetailState instance) =>
    <String, dynamic>{
      'orderDetails': instance.orderDetails,
    };
