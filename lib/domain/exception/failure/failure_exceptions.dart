import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_exceptions.freezed.dart';

@freezed
class FailureExceptions with _$FailureExceptions {
  const factory FailureExceptions.requestCancelled() = RequestCancelled;
  const factory FailureExceptions.unauthorizedRequest() = UnauthorizedRequest;
  const factory FailureExceptions.forbiddenRequest() = ForbiddenRequest;
  const factory FailureExceptions.badRequest() = BadRequest;
  const factory FailureExceptions.notFound(String reason) = NotFound;
  const factory FailureExceptions.methodNotAllowed() = MethodNotAllowed;
  const factory FailureExceptions.notAcceptable() = NotAcceptable;
  const factory FailureExceptions.requestTimeout() = RequestTimeout;
  const factory FailureExceptions.sendTimeout() = SendTimeout;
  const factory FailureExceptions.conflict() = Conflict;
  const factory FailureExceptions.serverError() = ServerError;
  const factory FailureExceptions.internalServerError() = InternalServerError;
  const factory FailureExceptions.notImplemented() = NotImplemented;
  const factory FailureExceptions.serviceUnavailable() = ServiceUnavailable;
  const factory FailureExceptions.noInternetConnection() = NoInternetConnection;
  const factory FailureExceptions.formatExceptions(FormatException e) =
      FormatExceptions;
  const factory FailureExceptions.unableToProcess() = UnableToProcess;
  const factory FailureExceptions.defaultError(String error) = DefaultError;
  const factory FailureExceptions.unexpectedError() = UnexpectedError;
  static FailureExceptions handleResponse(int? statusCode, dynamic data) {
    switch (statusCode) {
      case 400:
        return const FailureExceptions.badRequest();
      case 401:
        return const FailureExceptions.unauthorizedRequest();
      case 403:
        return const FailureExceptions.forbiddenRequest();
      case 404:
        return FailureExceptions.notFound(data["msg"]);
      case 405:
        return const FailureExceptions.methodNotAllowed();
      case 406:
        return const FailureExceptions.notAcceptable();
      case 408:
        return const FailureExceptions.requestTimeout();
      case 409:
        return const FailureExceptions.conflict();
      case 500:
        return const FailureExceptions.internalServerError();
      case 503:
        return const FailureExceptions.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return FailureExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  static FailureExceptions getDioException(error) {
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              return const FailureExceptions.requestCancelled();
            case DioErrorType.connectTimeout:
              return const FailureExceptions.requestTimeout();
            case DioErrorType.receiveTimeout:
              return const FailureExceptions.sendTimeout();
            case DioErrorType.response:
              return FailureExceptions.handleResponse(
                  error.response!.statusCode, error.response!.data);
            case DioErrorType.sendTimeout:
              return const FailureExceptions.sendTimeout();
            case DioErrorType.other:
              return const FailureExceptions.noInternetConnection();
          }
        } else if (error is SocketException) {
          return const FailureExceptions.noInternetConnection();
        } else if (error is FormatException) {
          return FailureExceptions.formatExceptions(error);
        } else if (error is PlatformException) {
          return const FailureExceptions.serverError();
        } else {
          return const FailureExceptions.unexpectedError();
        }
      } on FormatException catch (e) {
        // Helper.printError(e.toString());
        return FailureExceptions.formatExceptions(e);
      } on PlatformException catch (_) {
        return const FailureExceptions.serverError();
      } catch (e) {
        return const FailureExceptions.unexpectedError();
      }
    } else {
      var z = error.toString().contains("is not a subtype of");
      debugPrint("Failure EXCEPTIONS $z");
      if (error.toString().contains("is not a subtype of")) {
        return const FailureExceptions.unableToProcess();
      } else {
        return const FailureExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(FailureExceptions failureExceptions) {
    var errorMessage = "";
    failureExceptions.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, serverError: () {
      errorMessage = "Server Error";
    }, internalServerError: () {
      errorMessage = "Internal Server Error";
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method Allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorizedRequest: () {
      errorMessage = "Unauthorized request";
    }, forbiddenRequest: () {
      errorMessage = "Unauthorized request";
    }, unexpectedError: () {
      errorMessage = "Unexpected error occurred";
    }, requestTimeout: () {
      errorMessage = "Connection request timeout";
    }, noInternetConnection: () {
      errorMessage = "Tidak Ada Koneksi Internet";
    }, conflict: () {
      errorMessage = "Error due to a conflict";
    }, sendTimeout: () {
      errorMessage = "Send timeout in connection with API server";
    }, unableToProcess: () {
      errorMessage = "Tidak Dapat Memproses Data, Silahkan Dulangi";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatExceptions: (FormatException e) {
      errorMessage = "Unexpected error occurred ${e.toString()}";
    }, notAcceptable: () {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }
}
