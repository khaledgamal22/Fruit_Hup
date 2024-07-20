import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';
import 'package:fruits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_up_repo.dart';

class SignUpRepoImpl implements SignUpRepo {
  final FirebaseAuthService firebaseAuthService;

  SignUpRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    var response = await firebaseAuthService.craeteUserWithEmailAndPassword(
        email: email, password: password);
    response.fold((failure) {
      return left(failure);
    }, (user) {
      return right(user);
    });
    throw Exception();
  }
}
