import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';
import 'package:fruits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce_app/features/Auth/data/models/user_model.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_up_repo.dart';

import '../../../../core/services/database_service.dart';
import '../../../../uitilits/backend_endpoints.dart';

class SignUpRepoImpl implements SignUpRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseServices databaseServices;

  SignUpRepoImpl({
    required this.databaseServices,
    required this.firebaseAuthService,
  });

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    var response = await firebaseAuthService.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    return response.fold(
      (failure) => left(failure),
      (user) async {
        UserEntity userEntity = UserModel.fromfirbase(user);
        await addUser(
          userEntity: UserEntity(
            name: name,
            email: email,
            userId: user.uid,
          ),
        );
        return right(
          userEntity,
        );
      },
    );
  }

  @override
  Future addUser({required UserEntity userEntity}) async {
    try {
      var isUserExsist = await databaseServices.checkIfDataExists(
        path: BackendEndpoints.isUserExsist,
        documentId: userEntity.userId,
      );
      if (isUserExsist) {
        await databaseServices.getData(
          path: BackendEndpoints.getUser,
          documentId: userEntity.userId,
        );
      } else {
        await databaseServices.addData(
          path: BackendEndpoints.addUserData,
          data: userEntity.toMap(),
          documentId: userEntity.userId,
        );
      }
    } on Exception {
      databaseServices.deleteData(
        path: BackendEndpoints.deleteUser,
        id: userEntity.userId,
      );
    }
  }
}
