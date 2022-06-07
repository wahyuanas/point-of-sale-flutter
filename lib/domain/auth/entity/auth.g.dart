// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$$_AuthFromJson(Map<String, dynamic> json) => _$_Auth(
      id: json['id'] as String?,
      name: json['name'] as String?,
      hpNumber: json['hpNumber'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String?,
      photo: json['photo'] as String?,
      isRegistered: json['isRegistered'] as int?,
      category: json['category'] as int?,
      password: json['password'] as int?,
      isMedSoc: json['isMedSoc'] as int?,
    );

Map<String, dynamic> _$$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hpNumber': instance.hpNumber,
      'email': instance.email,
      'token': instance.token,
      'photo': instance.photo,
      'isRegistered': instance.isRegistered,
      'category': instance.category,
      'password': instance.password,
      'isMedSoc': instance.isMedSoc,
    };
