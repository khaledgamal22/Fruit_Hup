import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';

abstract class SignUpRepo {
  Future<Either<Failure,UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
}