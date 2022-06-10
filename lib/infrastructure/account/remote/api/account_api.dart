import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/infrastructure/account/remote/api/i_account_api.dart';
import 'package:pos/infrastructure/service/base_url.dart';
import 'package:pos/infrastructure/service/dio_service.dart' as c;

import '../dto/dto_account.dart';

class AccountApi extends c.DioServiceApi implements IAccountApi {
  @override
  Future<DtoAccountResponse> signUp(DtoAccountRequest dto) async {
    try {
      debugPrint("DTO ${dto.toJson()}");
      var formData = FormData.fromMap(dto.toJson());
      debugPrint("END POUNT $baseUrl$signUpEndPoint");
      var response = await dio.post(baseUrl + signUpEndPoint, data: formData);
      debugPrint("DATA RESPONS $response");
      return DtoAccountResponse.fromJson(response.data["data"]["account"]);
    } on FormatException catch (_) {
      debugPrint("FormatException ERROR");
      throw const FormatException("Tidak Dapat Memproses Data");
    } on DioError catch (e) {
      debugPrint("DIO ERROR");
      if (e.response != null) {
        debugPrint(e.response?.data);
        debugPrint("${e.response?.headers}");
        debugPrint("${e.response?.requestOptions}");
      } else {
        debugPrint("${e.requestOptions}");
        debugPrint(e.message);
      }
      rethrow;
    } catch (e) {
      debugPrint("OTHER ERROR $e");
      rethrow;
    }
  }
}
