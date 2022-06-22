part of 'pos_catalog_cubit.dart';

@freezed
class PosCatalogState with _$PosCatalogState {
  const factory PosCatalogState(
      {required List<Item>? items,
      required String? keyWord}) = _PosCatalogState;

  factory PosCatalogState.initial() =>
      const PosCatalogState(items: null, keyWord: null);
}
