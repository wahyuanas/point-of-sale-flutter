part of 'pos_catalog_cubit.dart';

@freezed
class PosCatalogState with _$PosCatalogState {
  const factory PosCatalogState({required List<Item>? items}) =
      _PosCatalogState;

  factory PosCatalogState.initial() => PosCatalogState(items: itemPos);
}
