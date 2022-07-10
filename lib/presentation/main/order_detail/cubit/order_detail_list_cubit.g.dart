// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailListState _$$_OrderDetailListStateFromJson(
        Map<String, dynamic> json) =>
    _$_OrderDetailListState(
      orderDetails: (json['orderDetails'] as List<dynamic>?)
          ?.map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDetailListStateToJson(
        _$_OrderDetailListState instance) =>
    <String, dynamic>{
      'orderDetails': instance.orderDetails,
    };
