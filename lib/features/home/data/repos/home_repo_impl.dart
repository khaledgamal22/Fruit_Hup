import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerce_app/core/services/database_service.dart';
import 'package:fruits_ecommerce_app/core/services/hive_service.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';

import '../../../../uitilits/backend_endpoints.dart';
import '../../../profile/data/models/favorite_model.dart';
import '../../domain/repos/home_repo.dart';
import '../models/product_model.dart';

class HomeRepoImpl implements HomeRepo {
  final DatabaseServices databaseServices;
  final HiveService hiveService;

  HomeRepoImpl({required this.hiveService, required this.databaseServices});
  String currentUser = FirebaseAuth.instance.currentUser!.uid;

  @override
  Future<List<ProductEntity>> fetechHomeProducts() async {
    try {
      QuerySnapshot data =
          await databaseServices.getAllData(path: BackendEndpoints.getproducts);

      List<ProductEntity> products = data.docs
          .map(
            (doc) => ProductModel.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList();
      return products;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  @override
  Future<bool> isProductInCart({required String id}) {
    return databaseServices.checkIfDataExists(
      path:
          '${BackendEndpoints.getUser}/$currentUser/${BackendEndpoints.getCartData}',
      documentId: id,
    );
  }

  @override
  bool checkIfProductIsFavorite({required FavoriteModel favoriteModel}) {
    return hiveService.doesFavoriteExist(favoriteModel);
  }

  @override
  void deletProductFromFavorite({required String id}) {
    hiveService.deleteFavorite(id: id);
  }
}
