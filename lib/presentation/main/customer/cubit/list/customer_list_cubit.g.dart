// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerState _$$_CustomerStateFromJson(Map<String, dynamic> json) =>
    _$_CustomerState(
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CustomerStateToJson(_$_CustomerState instance) =>
    <String, dynamic>{
      'customers': instance.customers,
    };
