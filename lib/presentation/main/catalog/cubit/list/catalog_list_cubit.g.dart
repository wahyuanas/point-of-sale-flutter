// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogState _$$_CatalogStateFromJson(Map<String, dynamic> json) =>
    _$_CatalogState(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CatalogStateToJson(_$_CatalogState instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
