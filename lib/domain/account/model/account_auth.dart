import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/account/entity/account.dart';

part 'account_auth.freezed.dart';
part 'account_auth.g.dart';

@freezed
class AccountAuth with _$AccountAuth {
  const factory AccountAuth({
    required Account account,
    required String token,
  }) = _AccountAuth;

  factory AccountAuth.fromJson(Map<String, dynamic> json) =>
      _$AccountAuthFromJson(json);
}
