// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentCardInfo _$$_PaymentCardInfoFromJson(Map<String, dynamic> json) =>
    _$_PaymentCardInfo(
      id: json['id'] as int,
      name: json['name'] as String,
      number: json['number'] as String,
      numberRef: json['numberRef'] as String,
      remarks: json['remarks'] as String,
    );

Map<String, dynamic> _$$_PaymentCardInfoToJson(_$_PaymentCardInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'numberRef': instance.numberRef,
      'remarks': instance.remarks,
    };
