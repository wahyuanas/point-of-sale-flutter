import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/core/object_value/entity.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account implements IEntity {
  const factory Account(
      {required int? id,
      required String? companyName,
      required String? phoneNumber,
      required String? email,
      required String? address,
      required int? outletsNumber,
      required int? businessType}) = _Account;

  // factory Account.empty() => const Account(
  //     id: null,
  //     companyName: null,
  //     phoneNumber: null,
  //     email: null,
  //     token: null,
  //     address: null,
  //     outletsNumber: null,
  //     businessType: null);

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
