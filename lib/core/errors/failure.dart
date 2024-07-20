import 'package:firebase_auth/firebase_auth.dart';
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class AuthFailure extends Failure {
  AuthFailure(super.errorMessage);

  factory AuthFailure.firebaseAuth(
      FirebaseAuthException firebaseAuthException) {
    if (firebaseAuthException.code == 'user-not-found') {
      return AuthFailure('user not found');
    } else if (firebaseAuthException.code == 'wrong-password') {
      return AuthFailure('Wrong password');
    } else if (firebaseAuthException.code == 'weak-password') {
      return AuthFailure('week password');
    } else if (firebaseAuthException.code == 'email-already-in-use') {
      return AuthFailure('this email already exists');
    } else {
      return AuthFailure('something went wrong');
    }
  }
}

class ServerFailre extends Failure {
  ServerFailre(super.errorMessage);

  factory ServerFailre.fromDioError(DioException dioException) {
    switch (DioException) {
      case DioException.sendTimeout:
        return ServerFailre('Send timeout with ApiServer');

      case DioException.connectionTimeout:
        return ServerFailre('Connection timeout with ApiServer');

      case DioExceptionType.cancel:
        return ServerFailre('Canceled');

      case DioException.receiveTimeout:
        return ServerFailre('Receive timeout with ApiServer');

      case DioException.badResponse:
        return ServerFailre.fromResponseError(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailre('No Internet Connection');
        } else {
          return ServerFailre('Unexpected error,please try again');
        }
      default:
        return ServerFailre('please try again');
    }
  }
  factory ServerFailre.fromResponseError(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailre(response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailre('Your requist not found,Please try again');
    } else if (statuscode == 500) {
      return ServerFailre('internal server later,Please try again');
    } else {
      return ServerFailre('Oops, there was an error');
    }
  }
}
