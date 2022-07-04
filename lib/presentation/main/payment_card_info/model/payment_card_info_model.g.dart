// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentCardInfoModel _$$_PaymentCardInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentCardInfoModel(
      id: json['id'] as int,
      name: json['name'] as String,
      number: json['number'] as String,
      numberRef: json['numberRef'] as String,
      remarks: json['remarks'] as String,
    );

Map<String, dynamic> _$$_PaymentCardInfoModelToJson(
        _$_PaymentCardInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'numberRef': instance.numberRef,
      'remarks': instance.remarks,
    };
