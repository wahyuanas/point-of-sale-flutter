part of 'item_cubit.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({required List<Item>? items}) = _ItemState;

  factory ItemState.initial() => ItemState(items: itemPos);
}
