part of 'catalog_list_cubit.dart';

@freezed
class CatalogListState with _$CatalogListState {
  const factory CatalogListState({required List<Item>? items}) =
      _CatalogListState;

  factory CatalogListState.initial() => CatalogListState(items: itemss);
  factory CatalogListState.reLoad(List<Item>? items) => CatalogListState(
        items: items,
      );

  factory CatalogListState.fromJson(Map<String, dynamic> json) =>
      _$CatalogListStateFromJson(json);
}
