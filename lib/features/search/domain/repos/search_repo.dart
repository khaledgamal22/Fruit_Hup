import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';

abstract class SearchRepo {
  Future<List<ProductEntity>> searchForProducts({
    required String searchValue,
  });
}
