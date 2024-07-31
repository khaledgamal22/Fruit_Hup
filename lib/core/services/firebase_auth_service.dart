import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<Either<Failure, User>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(credential.user!);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('somthing went wrong'));
    }
  }

  Future<Either<Failure, User>> loginWithEmailAndPassWord({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(credential.user!);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('somthing went wrong'));
    }
  }

  Future<Either<Failure, User>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return right(
          (await FirebaseAuth.instance.signInWithCredential(credential)).user!);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('somthing went wrong'));
    }
  }

  Future<Either<Failure, User>> signInWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

      return right((await FirebaseAuth.instance
              .signInWithCredential(facebookAuthCredential))
          .user!);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('حدث خطاء في تسجيل الدخول'));
    }
  }
}
