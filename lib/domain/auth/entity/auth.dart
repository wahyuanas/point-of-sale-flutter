import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/entity.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth implements IEntity {
  const factory Auth(
      {required String? id,
      required String? name,
      required String? hpNumber,
      required String? email,
      required String? token,
      required String? photo,
      required int? isRegistered,
      required int? category,
      required int? password,
      required int? isMedSoc}) = _Auth;

  factory Auth.empty() => const Auth(
        id: null,
        name: null,
        hpNumber: null,
        email: null,
        token: null,
        photo: null,
        isRegistered: null,
        category: null,
        password: null,
        isMedSoc: null,
      );

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
