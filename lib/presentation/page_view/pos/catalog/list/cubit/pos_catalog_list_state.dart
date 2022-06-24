part of 'pos_catalog_list_cubit.dart';

@freezed
class PosCatalogListState with _$PosCatalogListState {
  const factory PosCatalogListState(
      {required List<Item>? items,
      required String? keyWord}) = _PosCatalogListState;

  factory PosCatalogListState.initial() =>
      const PosCatalogListState(items: null, keyWord: null);
}
