part of 'pos_main_bloc.dart';

@freezed
class PosMainState with _$PosMainState {
  const factory PosMainState({required int? idItem, required List<Pos>? poss}) =
      _PosMainState;

  factory PosMainState.initial() =>
      const PosMainState(idItem: null, poss: null);
}
