import 'package:pos/infrastructure/account/remote/api/i_account_api.dart';

import '../dto/dto_account.dart';

class AccountApi implements IAccountApi {
  @override
  Future<DtoAccountResponse> signUp(DtoAccountRequest dto) async {
    return const DtoAccountResponse(
        address: "",
        businessType: 1,
        companyName: '',
        email: '',
        id: 1,
        outletsNumber: 1,
        phoneNumber: '');
  }
}
