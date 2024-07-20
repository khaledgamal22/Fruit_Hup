
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';

class FirebaseAuthService{
  Future<Either<Failure,User>> craeteUserWithEmailAndPassword({required String email,required String password,})async{
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return  right(credential.user!);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('somthing went wrong'));
    }
  }
}