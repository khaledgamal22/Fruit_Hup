import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';
import 'package:fruits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce_app/features/Auth/data/models/user_model.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_in_repo.dart';

class SignInRepoImpl implements SignInRepo {
  final FirebaseAuthService firebaseAuthService;

  SignInRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> loginWithEmailAndPassWord({
    required String email,
    required String password,
  }) async {
    var response = await firebaseAuthService.loginWithEmailAndPassWord(
      email: email,
      password: password,
    );
    return response.fold(
      (failure) => left(failure),
      (user) => right(
        UserModel.fromfirbase(user),
      ),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    var response = await firebaseAuthService.signInWithGoogle();
    return response.fold(
      (failure) => left(failure),
      (user) => right(
        UserModel.fromfirbase(user),
      ),
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    var response = await firebaseAuthService.signInWithFacebook();
    return response.fold(
      (failure) => left(failure),
      (user) => right(
        UserModel.fromfirbase(user),
      ),
    );
  }
}
