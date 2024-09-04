import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_ecommerce_app/core/services/database_service.dart';

import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/uitilits/backend_endpoints.dart';

import '../../domain/repos/cart_repo.dart';
import '../models/cart_model.dart';

class CartRepoImpl implements CartRepo {
  final DatabaseServices databaseServices;

  CartRepoImpl({required this.databaseServices});
  @override
  Future addCartData({required CartEntity cartEntity}) async {
    bool isExists = await databaseServices.checkIfDataExists(
      path: BackendEndpoints.isCartExsist,
      documentId: cartEntity.id,
    );
    if (!isExists) {
      await databaseServices.addData(
        path: BackendEndpoints.addCartData,
        data: cartEntity.toMap(),
        documentId: cartEntity.id,
      );
    }
  }

  @override
  Future<void> deleteCartData({required String id}) {
    return databaseServices.deleteData(
      path: BackendEndpoints.addCartData,
      id: id,
    );
  }

  @override
  Future<bool> checkIfCartDataExists({required String id}) {
    return databaseServices.checkIfDataExists(
      path: BackendEndpoints.addCartData,
      documentId: id,
    );
  }

  @override
  Future<List<CartEntity>> getAllCartData() async {
    try {
      QuerySnapshot querySnapshot = await databaseServices.getAllData(
        path: BackendEndpoints.getCartData,
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
}
