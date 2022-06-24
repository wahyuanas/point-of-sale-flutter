part of 'catalog_form_create_cubit.dart';

@freezed
class CatalogFormCreateState with _$CatalogFormCreateState {
  const factory CatalogFormCreateState(
      {required StateStatus<FailureExceptions, Item> status,
      required CreateCatalogItem createCatalogItem,
      required bool failOrUnit}) = _CatalogFormCreateState;

  factory CatalogFormCreateState.initial() => CatalogFormCreateState(
      status: const StateStatus.initial(),
      createCatalogItem: CreateCatalogItem.empty(),
      failOrUnit: false);
}
