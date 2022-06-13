import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_bar_state.dart';

part 'bottom_navigation_bar_cubit.freezed.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  @override
  BottomNavigationBarCubit() : super(BottomNavigationBarState.initial());

  void setCurrentTabItem({@required int? value}) {
    //print("BLOC SETCURRENT TAB");
    emit(state.copyWith(currentTabItem: value));
  }

  void setEveryBottomNavigationBar(value) =>
      emit(state.copyWith(currentTabItem: value, every: !state.every));

  void setInboxBottomNavigationBar() =>
      emit(state.copyWith(every: !state.every, data: "inbox"));
}
