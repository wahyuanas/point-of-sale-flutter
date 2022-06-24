part of 'catalog_form_edit_cubit.dart';

@freezed
class CatalogFormEditState with _$CatalogFormEditState {
  const factory CatalogFormEditState(
      {required StateStatus<FailureExceptions, Item> status,
      required EditCatalogItem editCatalogItem,
      required bool failOrUnit}) = _CatalogFormEditState;

  factory CatalogFormEditState.initial() => CatalogFormEditState(
      status: const StateStatus.initial(),
      editCatalogItem: EditCatalogItem.empty(),
      failOrUnit: false);
}
