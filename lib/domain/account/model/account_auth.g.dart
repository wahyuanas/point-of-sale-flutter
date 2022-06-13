// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountAuth _$$_AccountAuthFromJson(Map<String, dynamic> json) =>
    _$_AccountAuth(
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_AccountAuthToJson(_$_AccountAuth instance) =>
    <String, dynamic>{
      'account': instance.account,
      'token': instance.token,
    };
