// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      code: json['code'] as String,
      customerId: json['customerId'] as int,
      vehicleId: json['vehicleId'] as int,
      employeeId:
          (json['employeeId'] as List<dynamic>).map((e) => e as int).toList(),
      date: DateTime.parse(json['date'] as String),
      amount: json['amount'] as int,
      grandAmount: json['grandAmount'] as int,
      disc: (json['disc'] as num?)?.toDouble(),
      paymentType: json['paymentType'] as int,
      paymentCardInfo: json['paymentCardInfo'] as int?,
      charge: json['charge'] as int,
      paidAmount: json['paidAmount'] as int,
      changeAmount: json['changeAmount'] as int,
      description: json['description'] as String?,
      tax: json['tax'] as int,
      itemNumber: json['itemNumber'] as int,
      paidStatus: json['paidStatus'] as int,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'code': instance.code,
      'customerId': instance.customerId,
      'vehicleId': instance.vehicleId,
      'employeeId': instance.employeeId,
      'date': instance.date.toIso8601String(),
      'amount': instance.amount,
      'grandAmount': instance.grandAmount,
      'disc': instance.disc,
      'paymentType': instance.paymentType,
      'paymentCardInfo': instance.paymentCardInfo,
      'charge': instance.charge,
      'paidAmount': instance.paidAmount,
      'changeAmount': instance.changeAmount,
      'description': instance.description,
      'tax': instance.tax,
      'itemNumber': instance.itemNumber,
      'paidStatus': instance.paidStatus,
    };
