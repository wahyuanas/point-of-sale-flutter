import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pos/infrastructure/account/remote/dto/core/dto_account.dart';
import 'package:pos/infrastructure/service/dio_service.dart';
import 'package:uuid/uuid.dart';

import '../dto/sign_in/dto_sign_in.dart';
import '../dto/sign_up/dto_sign_up.dart';
import 'i_account_api.dart';

class ApiFailureException implements Exception {
  /// {@macro sign_up_with_email_and_password_failure}
  const ApiFailureException([
    this.err = '',
  ]);

  factory ApiFailureException.fromMessage(String err) {
    return ApiFailureException(err);
  }

  /// The associated error message.
  final String err;
}

class AccountApi extends DioServiceApi implements IAccountApi {
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
    // try {
    // debugPrint("DTO ${dto.toJson()}");
    //var formData = FormData.fromMap(dto.toJson());
    //debugPrint("END POUNT $baseUrl$signUpEndPoint");
    //var response = await dio.post(baseUrl + signUpEndPoint, data: formData);
    //debugPrint("DATA RESPONS $response");

    //return DtoAccountResponse.fromJson(response.data["data"]["account"]);

    try {
      // String uUid = const Uuid().v4();
      // await firebaseFirestore
      //     .collection('account')
      //     .doc(uUid)
      //     .set(dto.toFirestoreCollection(uUid));
      return DtoSignUpResponse.fromDtoSignUpRequest(dto);
    } on FirebaseException {
      throw (FormatException);
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
      // if (dto.emailOrPhoneNumber.contains("@")) {
      //   final qs = await firebaseFirestore
      //       .collection('account')
      //       .where("email", isEqualTo: dto.emailOrPhoneNumber)
      //       .get();
      //   debugPrint("ACCOUNT API $qs");
      //   if (qs.docChanges.isEmpty) {
      //     throw (ApiFailureException.fromMessage(
      //         "Data Yang Anda Masukkan Tidak Valid !!!"));
      //   } else {
      //     return DtoSignInResponse.fromApi(qs.docChanges[0].doc.data() ?? {});
      //   }
      // } else {
      //   final qs = await firebaseFirestore
      //       .collection('account')
      //       .where("email", isEqualTo: dto.emailOrPhoneNumber)
      //       .get();
      //   if (qs.docChanges.isEmpty) {
      //     throw (ApiFailureException.fromMessage(
      //         "Data Yang Anda Masukkan Tidak Valid !!!"));
      //   } else {
      //     return DtoSignInResponse.fromApi(qs.docChanges[0].doc.data() ?? {});
      //   }
      // }

      // if (dto.emailOrPhoneNumber.contains("@")) {
      //   return firebaseFirestore
      //       .collection('account')
      //       .where("email", isEqualTo: dto.emailOrPhoneNumber)
      //       .get()
      //       .then((querySnapshot) {
      //     if (querySnapshot.docChanges.isEmpty) {
      //       throw (ApiFailureException.fromMessage(
      //           "Data Yang Anda Masukkan Tidak Valid !!!"));
      //     } else {
      //       return DtoSignInResponse.fromApi(
      //           querySnapshot.docChanges[0].doc.data() ?? {});
      //     }
      //   }).catchError((e) {
      //     throw (FormatException);
      //   });
      // } else {
      //   return firebaseFirestore
      //       .collection('account')
      //       .where("phoneNumber", isEqualTo: dto.emailOrPhoneNumber)
      //       .get()
      //       .then((querySnapshot) {
      //     if (querySnapshot.docChanges.isEmpty) {
      //       throw (ApiFailureException.fromMessage(
      //           "Data Yang Anda Masukkan Tidak Valid !!!"));
      //     } else {
      //       return DtoSignInResponse.fromApi(
      //           querySnapshot.docChanges[0].doc.data() ?? {});
      //     }
      //   }).catchError((e) {
      //     debugPrint("ACCOUNT API 5 $e");
      //     throw (FormatException);
      //   });
      // }

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
