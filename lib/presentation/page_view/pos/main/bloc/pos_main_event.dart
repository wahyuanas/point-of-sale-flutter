part of 'pos_main_bloc.dart';

@freezed
class PosMainEvent with _$PosMainEvent {
  const factory PosMainEvent.started() = PosStartedEvent;

  const factory PosMainEvent.addItem({required Item item}) = PosAddItemEvent;

  const factory PosMainEvent.incrementItem({required Item item}) =
      PosIncrementItemEvent;

  const factory PosMainEvent.decrementItem({required Item item}) =
      PosDecrementItemEvent;

  const factory PosMainEvent.changeItem({required Item item}) =
      PosChangeItemEvent;

  const factory PosMainEvent.countItem(
      {required int? id, required bool? value}) = PosCountItemEvent;

  const factory PosMainEvent.countAllItem({required bool? value}) =
      PosCountAllItemEvent;
}
