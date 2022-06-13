import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_account.freezed.dart';
part 'dto_account.g.dart';

@freezed
class DtoAccount with _$DtoAccount {
  const DtoAccount._();
  const factory DtoAccount(
      {required int id,
      required String companyName,
      required String phoneNumber,
      required String email,
      required String address,
      required int outletsNumber,
      required int businessType,
      required int? mainBusinessType,
      required String? coreBusinessType}) = _DtoAccount;

  factory DtoAccount.fromJson(Map<String, dynamic> json) =>
      _$DtoAccountFromJson(json);
}
