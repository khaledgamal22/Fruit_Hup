import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerce_app/core/services/database_service.dart';

import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/uitilits/backend_endpoints.dart';

import '../../domain/repos/cart_repo.dart';
import '../models/cart_model.dart';

class CartRepoImpl implements CartRepo {
  final DatabaseServices databaseServices;
  CartRepoImpl({required this.databaseServices});
  String currentUser = FirebaseAuth.instance.currentUser!.uid;
  @override
  Future addCartData({required CartEntity cartEntity}) async {
    bool isExists = await databaseServices.checkIfDataExists(
      path: BackendEndpoints.isCartExsist,
      documentId: cartEntity.id,
    );
    if (!isExists) {
      databaseServices.addData(
        path:
            '${BackendEndpoints.getUser}/$currentUser/${BackendEndpoints.addCartData}',
        data: cartEntity.toMap(),
        documentId: cartEntity.id,
      );
    }
  }

  @override
  Future<void> deleteCartData({required String id}) {
    return databaseServices.deleteData(
      path:
          '${BackendEndpoints.getUser}/$currentUser/${BackendEndpoints.getCartData}',
      id: id,
    );
  }

  @override
  Future<bool> checkIfCartDataExists({required String id}) {
    return databaseServices.checkIfDataExists(
      path:
          '${BackendEndpoints.getUser}/$currentUser/${BackendEndpoints.getCartData}',
      documentId: id,
    );
  }

  @override
  Future<List<CartEntity>> getAllCartData() async {
    try {
      QuerySnapshot querySnapshot = await databaseServices.getAllData(
        path:
            '${BackendEndpoints.getUser}/$currentUser/${BackendEndpoints.getCartData}',
      );

      List<CartEntity> data = querySnapshot.docs
          .map(
            (doc) => CartModel.fromFirebase(doc.data() as Map<String, dynamic>),
          )
          .toList();
      return data;
    } on Exception catch (e) {
      print(e.toString());
      return [];
    }
  }

  @override
  Future<void> updateCartData({
    required String id,
    required Map<String, dynamic> data,
  }) async {
    try {
      return await databaseServices.updateData(
        path:
            '${BackendEndpoints.getUser}/$currentUser/${BackendEndpoints.getCartData}',
        documentId: id,
        data: data,
      );
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
