import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';
import 'package:fruits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce_app/core/services/firebase_store_service.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/features/Auth/data/models/user_model.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_in_repo.dart';
import 'package:fruits_ecommerce_app/uitilits/backend_endpoints.dart';

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
      (user) async {
        var userEntity = await getUserData(userId: user.uid);
        await saveUserData(userEntity);
        return right(
          userEntity,
        );
      },
    );
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    var response = await firebaseAuthService.signInWithGoogle();
    return response.fold(
      (failure) => left(failure),
      (user) async {
        bool isExsist = await FirebaseStoreService().checkIfDataExists(
          path: BackendEndpoints.isUserExsist,
          documentId: user.uid,
        );

        if (!isExsist) {
          await FirebaseStoreService().addData(
            path: BackendEndpoints.addUserData,
            data: UserModel.fromfirbase(user).toMap(),
            documentId: user.uid,
          );
        }

        var userEntity = await getUserData(userId: user.uid);
        await saveUserData(userEntity);
        return right(
          userEntity,
        );
      },
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

  @override
  Future<void> saveUserData(UserEntity user) async {
    var jsonData = jsonEncode(UserModel.fromEntity(user).toMap());
    await SharedPreferenceSingleton.setString('userData', jsonData);
  }

  @override
  Future<UserEntity> getUserData({required String userId}) async {
    var data = await FirebaseStoreService().getData(
      path: BackendEndpoints.getUser,
      documentId: userId,
    );
    return UserModel.fromJson(data);
  }
}
