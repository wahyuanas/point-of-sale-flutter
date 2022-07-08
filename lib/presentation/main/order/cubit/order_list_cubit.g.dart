// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderListState _$$_OrderListStateFromJson(Map<String, dynamic> json) =>
    _$_OrderListState(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderListStateToJson(_$_OrderListState instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
