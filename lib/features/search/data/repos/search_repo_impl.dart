import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_ecommerce_app/core/services/database_service.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';

import '../../../../uitilits/backend_endpoints.dart';
import '../../../home/data/models/product_model.dart';
import '../../domain/repos/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final DatabaseServices databaseServices;
  SearchRepoImpl({required this.databaseServices});

  @override
  Future<List<ProductEntity>> searchForProducts(
      {required String searchValue}) async {
    QuerySnapshot data = await databaseServices.searchForData(
      path: BackendEndpoints.getproducts,
      searchKey: 'name',
      searchValue: searchValue,
    );

    if (data.docs.isNotEmpty) {
      List<ProductEntity> products = data.docs
          .map(
            (doc) => ProductModel.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList();

      return products;
    }

    return List<ProductEntity>.empty();
  }
}
