// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerListState _$$_CustomerListStateFromJson(Map<String, dynamic> json) =>
    _$_CustomerListState(
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CustomerListStateToJson(
        _$_CustomerListState instance) =>
    <String, dynamic>{
      'customers': instance.customers,
    };
