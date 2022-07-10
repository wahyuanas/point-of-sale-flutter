// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int,
      uuid: json['uuid'] as String,
      code: json['code'] as String,
      customer: json['customer'] == null
          ? null
          : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
      vehicle: json['vehicle'] == null
          ? null
          : VehicleModel.fromJson(json['vehicle'] as Map<String, dynamic>),
      employee: (json['employee'] as List<dynamic>?)
          ?.map((e) => EmployeesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: DateTime.parse(json['date'] as String),
      amount: json['amount'] as int,
      grandAmount: json['grandAmount'] as int,
      disc: (json['disc'] as num?)?.toDouble(),
      paymentType: json['paymentType'] as int,
      paymentCardInfo: json['paymentCardInfo'] == null
          ? null
          : PaymentCardInfoModel.fromJson(
              json['paymentCardInfo'] as Map<String, dynamic>),
      charge: json['charge'] as int?,
      paidAmount: json['paidAmount'] as int,
      changeAmount: json['changeAmount'] as int,
      description: json['description'] as String?,
      tax: json['tax'] as int?,
      itemNumber: json['itemNumber'] as int,
      paidStatus: json['paidStatus'] as int,
      accountId: json['accountId'] as int,
      orderDetail: (json['orderDetail'] as List<dynamic>?)
          ?.map((e) => OrderDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'code': instance.code,
      'customer': instance.customer,
      'vehicle': instance.vehicle,
      'employee': instance.employee,
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
      'accountId': instance.accountId,
      'orderDetail': instance.orderDetail,
    };
