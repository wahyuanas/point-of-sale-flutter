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
      disc: json['disc'] as int,
      paymentType: json['paymentType'] as int,
      paymentCardInfo: PaymentCardInfo.fromJson(
          json['paymentCardInfo'] as Map<String, dynamic>),
      charge: json['charge'] as int,
      paidAmount: json['paidAmount'] as int,
      changeAmount: json['changeAmount'] as int,
      description: json['description'] as String,
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
