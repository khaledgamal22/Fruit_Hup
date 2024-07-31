import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';

abstract class SignInRepo {
  Future<Either<Failure, UserEntity>> loginWithEmailAndPassWord({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future<Either<Failure, UserEntity>> signInWithFacebook();
}
