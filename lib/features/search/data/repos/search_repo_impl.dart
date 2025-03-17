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
    List<QueryDocumentSnapshot<Map<String, dynamic>>> data =
        await databaseServices.searchForData(
      path: BackendEndpoints.getproducts,
      searchKey1: 'name',
      searchKey2: 'englishName',
      searchValue: searchValue,
    );

    if (data.isNotEmpty) {
      List<ProductEntity> products =
          data.map((doc) => ProductModel.fromJson(doc.data())).toList();

      return products;
    }

    return List<ProductEntity>.empty();
  }
}
