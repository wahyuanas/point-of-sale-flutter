part of 'catalog_list_cubit.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState({required List<Item>? items}) = _CatalogState;

  factory CatalogState.initial() => const CatalogState(items: null);
  factory CatalogState.reLoad(List<Item>? items) => CatalogState(
        items: items,
      );

  factory CatalogState.fromJson(Map<String, dynamic> json) =>
      _$CatalogStateFromJson(json);
}
