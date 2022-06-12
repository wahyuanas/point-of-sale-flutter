import 'package:dio/dio.dart';
import 'package:pos/infrastructure/service/base_url.dart';

abstract class DioServiceApi {
  final Dio dio = Dio()
    ..options.connectTimeout = 5000
    ..options.receiveTimeout = 5000;

  //..options.connectTimeout = 10000;

  String get baseUrls => baseUrl;
  //SIGN UP
  String get signUpEndPoint => "/account";
}
