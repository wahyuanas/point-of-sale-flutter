// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderState _$$_OrderStateFromJson(Map<String, dynamic> json) =>
    _$_OrderState(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderStateToJson(_$_OrderState instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };