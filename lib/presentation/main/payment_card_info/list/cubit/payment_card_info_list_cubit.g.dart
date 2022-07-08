// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_info_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentCardInfoListState _$$_PaymentCardInfoListStateFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentCardInfoListState(
      paymentCardInfos: (json['paymentCardInfos'] as List<dynamic>?)
          ?.map((e) => PaymentCardInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaymentCardInfoListStateToJson(
        _$_PaymentCardInfoListState instance) =>
    <String, dynamic>{
      'paymentCardInfos': instance.paymentCardInfos,
    };
