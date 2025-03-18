import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_ecommerce_app/core/services/database_service.dart';
import 'package:fruits_ecommerce_app/features/all_products/domain/repos/all_product_repo.dart';
import 'package:fruits_ecommerce_app/features/home/data/models/product_model.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';

import '../../../../uitilits/backend_endpoints.dart';

class AllProductRepoImpl implements AllProductRepo {
  final DatabaseServices databaseServices;

  AllProductRepoImpl({required this.databaseServices});
  @override
  Future<List<ProductEntity>> getFeaturedProducts() async {
    try {
      QuerySnapshot querySnapshot =
          await databaseServices.searchForDataByAtrribute(
        path: BackendEndpoints.getproducts,
        searchKey: 'isFeatured',
        searchValue: true,
      );

      List<ProductEntity> featuredProducts = querySnapshot.docs
          .map((doc) =>
              ProductModel.fromJson(doc.data() as Map<String, dynamic>))
          .toList();

      return featuredProducts;
    } catch (e) {
      return [];
    }
  }
}
