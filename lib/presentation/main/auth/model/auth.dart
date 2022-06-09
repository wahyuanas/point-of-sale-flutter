import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/account/entity/account.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth implements IEntity {
  const factory Auth({
    required Account? account,
    required String? token,
  }) = _Auth;

  factory Auth.empty() => const Auth(account: null, token: null);

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
