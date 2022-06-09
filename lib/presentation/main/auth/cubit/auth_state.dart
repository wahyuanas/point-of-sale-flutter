part of 'auth_cubit.dart';

// @freezed
// class AuthState with _$AuthState {
//   const factory AuthState({required Auth? auth}) = _AuthState;

//   factory AuthState.initial() => AuthState(auth: null);
// }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({required Auth? auth}) = _AuthState;

  factory AuthState.initial() => const AuthState(auth: null);
  factory AuthState.reLoad(Auth? auth) => AuthState(
        auth: auth,
      );

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

// @freezed
// class AuthState<T> with _$AuthState<T> {
//   const factory AuthState.initial({required Auth? auth}) = Initial<T>;
//   const factory AuthState.legitimated({required Auth? auth}) = Legitimated<T>;
//   const factory AuthState.unLegitimated({required Auth? auth}) =
//       UnLegitimated<T>;
// }
