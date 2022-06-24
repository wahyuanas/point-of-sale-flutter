import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/catalog/item/entity/item.dart';
import 'package:pos/domain/pos/entity/pos.dart';

part 'pos_main_state.dart';
part 'pos_main_event.dart';
part 'pos_main_bloc.freezed.dart';

class PosMainBloc extends Bloc<PosMainEvent, PosMainState> {
  PosMainBloc() : super(PosMainState.initial()) {
    on<PosMainEvent>((event, emit) async {
      await event.maybeWhen(
        started: () async => onStarted(event as PosStartedEvent, emit)
        // , addItem: (i, n) async =>
        //   onAddItem(event as PosAddItemEvent, emit)
        ,
        incrementItem: (i) async =>
            onIncrementItem(event as PosIncrementItemEvent, emit),
        decrementItem: (i) async =>
            onDecrementItem(event as PosDecrementItemEvent, emit),
        orElse: () {},
      );
    }, transformer: restartable());

    on<PosAddItemEvent>(onAddItem, transformer: restartable());
    // on<PosCountItemEvent>(onCount);
    // on<PosCountAllItemEvent>(onCountAll);
  }

  void onStarted(PosStartedEvent event, Emitter<PosMainState> emit) async {
    emit(state.copyWith(
      poss: null,
      idItem: null,
    ));
  }

  void onAddItem(PosAddItemEvent event, Emitter<PosMainState> emit) async {
    int? sumPrice;

    List<Pos> poss = [];
    if (event.item.sellDisc == null) {
      sumPrice = event.item.sellPrice;
    } else {
      sumPrice = (event.item.sellPrice -
              (event.item.sellPrice * (event.item.sellDisc! / 100)))
          .round();
    }
    Pos pos = Pos(
      item: event.item,
      qty: 1,
      sumPrice: sumPrice,
    );

    if (state.poss != null) {
      poss = List.from(state.poss!.toList());
      poss.add(pos);
    } else {
      poss.add(pos);
    }

    emit(state.copyWith(
      idItem: event.item.id,
      poss: poss,
    ));
  }

  void onIncrementItem(
      PosIncrementItemEvent event, Emitter<PosMainState> emit) async {
    Pos? pos;
    int? sumPrice;
    List<Pos>? poss;
    if (state.poss != null) {
      int? index =
          state.poss?.indexWhere((posc) => posc.item.id == event.item.id);
      if (index != null) {
        if (index >= 0) {
          poss = List.from(state.poss!.toList());
          pos = poss[index];
          sumPrice = pos.sumPrice;
          if (event.item.sellDisc == null) {
            sumPrice = (pos.sumPrice ?? 0) + event.item.sellPrice;
          } else {
            sumPrice = (pos.sumPrice ?? 0) +
                (event.item.sellPrice -
                        (event.item.sellPrice * (event.item.sellDisc! / 100)))
                    .round();
          }

          pos = pos.copyWith(sumPrice: sumPrice, qty: (pos.qty ?? 0) + 1);
          poss[index] = pos;
          emit(state.copyWith(idItem: event.item.id, poss: poss));
          debugPrint("POS BLOC");
        }
      }
    }
  }

  void onDecrementItem(
      PosDecrementItemEvent event, Emitter<PosMainState> emit) async {
    Pos? pos;
    int? sumPrice;
    List<Pos>? poss;
    int? qty;
    if (state.poss != null) {
      int? index = state.poss?.indexWhere((posc) {
        return posc.item.id == event.item.id;
      });

      if (index != null) {
        if (index >= 0) {
          poss = List.from(state.poss!.toList());
          pos = poss[index];
          qty = pos.qty;
          sumPrice = pos.sumPrice;
          if (event.item.sellDisc == null) {
            sumPrice = (pos.sumPrice ?? 0) - event.item.sellPrice;
          } else {
            sumPrice = (pos.sumPrice ?? 0) -
                (event.item.sellPrice -
                        (event.item.sellPrice * (event.item.sellDisc! / 100)))
                    .round();
          }
          qty = (qty ?? 0) - 1;

          if (qty == 0) {
            pos = pos.copyWith(qty: null, sumPrice: null);

            poss.removeAt(index);
            if (poss.isEmpty) {
              poss = null;
            }
          } else {
            pos = pos.copyWith(qty: qty, sumPrice: sumPrice);

            poss[index] = pos;
          }
        }
        emit(state.copyWith(
          idItem: event.item.id,
          poss: poss,
        ));
      }
    }
  }
}
