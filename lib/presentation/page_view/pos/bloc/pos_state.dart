part of 'pos_bloc.dart';

@freezed
class PosState with _$PosState {
  const factory PosState({required int? idItem, required List<Pos>? poss}) =
      _PosState;

  factory PosState.initial() => const PosState(idItem: null, poss: null);
}
