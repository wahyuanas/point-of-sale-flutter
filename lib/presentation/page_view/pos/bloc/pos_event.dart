part of 'pos_bloc.dart';

@freezed
class PosEvent with _$PosEvent {
  const factory PosEvent.started() = PosStartedEvent;

  const factory PosEvent.addItem({required Item item}) = PosAddItemEvent;

  const factory PosEvent.incrementItem({required Item item}) =
      PosIncrementItemEvent;

  const factory PosEvent.decrementItem({required Item item}) =
      PosDecrementItemEvent;

  const factory PosEvent.changeItem({required Item item}) = PosChangeItemEvent;

  const factory PosEvent.countItem({required int? id, required bool? value}) =
      PosCountItemEvent;

  const factory PosEvent.countAllItem({required bool? value}) =
      PosCountAllItemEvent;
}
