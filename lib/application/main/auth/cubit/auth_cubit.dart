import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pos/domain/auth/entity/auth.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  void authStarted() async {
    //await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(auth: state.auth));
  }

  void onAuthReload(Auth? auth) {
    emit(state.copyWith(auth: auth));
  }

  Future<void> onLogout() async {
    emit(state.copyWith(auth: null));
  }

  // void onLogout() {
  //   emit(AuthState.reLoad(Auth(
  //     id: null,
  //     idTypeUser: null,
  //     name: null,
  //     email: null,
  //     hpNumber: null,
  //     token: null,
  //     photo: null,
  //   )));
  // }

  @override
  AuthState fromJson(Map<String, dynamic> json) {
    debugPrint("AUTH CUBIT FROM JSON");
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(AuthState state) {
    debugPrint("AUTH CUBIT TO JSON ${state.auth}");
    return state.toJson();
  }
}
