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
      final QuerySnapshot querySnapshot = await databaseServices.searchForData(
        path: BackendEndpoints.getproducts,
        searchKey: 'isFeatured',
        searchValue: true,
      );

      // Map the retrieved documents to a list of ProductEntity
      List<ProductEntity> featuredProducts = querySnapshot.docs.map((doc) {
        return ProductModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();

      return featuredProducts;
    } catch (e) {
      print('Error getting featured products: $e');
      return [];
    }
  }
}
