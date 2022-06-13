import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/infrastructure/service/dio_service.dart' as c;
import 'package:uuid/uuid.dart';

import '../dto/core/dto_account.dart';
import '../dto/sign_in/dto_sign_in.dart';
import '../dto/sign_up/dto_sign_up.dart';
import 'i_account_api.dart';

class AccountApi extends c.DioServiceApi implements IAccountApi {
  AccountApi({required this.firebaseFirestore});
  final FirebaseFirestore firebaseFirestore;

  @override
  Future<DtoSignUpResponse> signUp(DtoSignUpRequest dto) async {
    //   try {
    //     debugPrint("DTO ${dto.toJson()}");
    //     var formData = FormData.fromMap(dto.toJson());
    //     debugPrint("END POUNT $baseUrl$signUpEndPoint");
    //     var response = await dio.post(baseUrl + signUpEndPoint, data: formData);
    //     debugPrint("DATA RESPONS $response");
    //     return DtoAccountResponse.fromJson(response.data["data"]["account"]);
    //   } on FormatException catch (_) {
    //     debugPrint("FormatException ERROR");
    //     throw const FormatException("Tidak Dapat Memproses Data");
    //   } on DioError catch (e) {
    //     debugPrint("DIO ERROR");
    //     if (e.response != null) {
    //       debugPrint(e.response?.data);
    //       debugPrint("${e.response?.headers}");
    //       debugPrint("${e.response?.requestOptions}");
    //     } else {
    //       debugPrint("${e.requestOptions}");
    //       debugPrint(e.message);
    //     }
    //     rethrow;
    //   } catch (e) {
    //     debugPrint("OTHER ERROR $e");
    //     rethrow;
    //   }
    // }
    try {
      debugPrint("DTO ${dto.toJson()}");
      //var formData = FormData.fromMap(dto.toJson());
      //debugPrint("END POUNT $baseUrl$signUpEndPoint");
      //var response = await dio.post(baseUrl + signUpEndPoint, data: formData);
      //debugPrint("DATA RESPONS $response");

      //return DtoAccountResponse.fromJson(response.data["data"]["account"]);
      String uUid = const Uuid().v4();
      firebaseFirestore
          .collection('account')
          .doc(uUid)
          .set(dto.toFirestoreCollection(uUid));

      return DtoSignUpResponse.fromDtoSignUpRequest(dto);
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

  @override
  Future<DtoSignInResponse> signIn(DtoSignInRequest dto) async {
    //   try {
    //     debugPrint("DTO ${dto.toJson()}");
    //     var formData = FormData.fromMap(dto.toJson());
    //     debugPrint("END POUNT $baseUrl$signUpEndPoint");
    //     var response = await dio.post(baseUrl + signUpEndPoint, data: formData);
    //     debugPrint("DATA RESPONS $response");
    //     return DtoAccountResponse.fromJson(response.data["data"]["account"]);
    //   } on FormatException catch (_) {
    //     debugPrint("FormatException ERROR");
    //     throw const FormatException("Tidak Dapat Memproses Data");
    //   } on DioError catch (e) {
    //     debugPrint("DIO ERROR");
    //     if (e.response != null) {
    //       debugPrint(e.response?.data);
    //       debugPrint("${e.response?.headers}");
    //       debugPrint("${e.response?.requestOptions}");
    //     } else {
    //       debugPrint("${e.requestOptions}");
    //       debugPrint(e.message);
    //     }
    //     rethrow;
    //   } catch (e) {
    //     debugPrint("OTHER ERROR $e");
    //     rethrow;
    //   }
    // }
    try {
      debugPrint("DTO ${dto.toJson()}");
      //var formData = FormData.fromMap(dto.toJson());
      //debugPrint("END POUNT $baseUrl$signUpEndPoint");
      //var response = await dio.post(baseUrl + signUpEndPoint, data: formData);
      //debugPrint("DATA RESPONS $response");

      //return DtoAccountResponse.fromJson(response.data["data"]["account"]);
      return DtoSignInResponse(
        dtoAccount: DtoAccount(
          id: Random().nextInt(1000),
          address: "Jl. Dummy No. 1",
          businessType: 1,
          companyName: 'PT. Dummy',
          coreBusinessType: null,
          email: 'dummy@dummy.com',
          mainBusinessType: 1,
          outletsNumber: 3,
          phoneNumber: '0987654321',
        ),
        token: "%436%7*#565677762@@56",
      );
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
