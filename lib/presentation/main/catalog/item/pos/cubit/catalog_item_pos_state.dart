part of 'catalog_item_pos_cubit.dart';

@freezed
class CatalogItemPosState with _$CatalogItemPosState {
  const factory CatalogItemPosState({required List<Item>? items}) =
      _CatalogItemPosState;

  factory CatalogItemPosState.initial() => CatalogItemPosState(items: itemPos);
}
