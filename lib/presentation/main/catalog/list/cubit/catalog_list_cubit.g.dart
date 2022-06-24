// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_list_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatalogListState _$$_CatalogListStateFromJson(Map<String, dynamic> json) =>
    _$_CatalogListState(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CatalogListStateToJson(_$_CatalogListState instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
