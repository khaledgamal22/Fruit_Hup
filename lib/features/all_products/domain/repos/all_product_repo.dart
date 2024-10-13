import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';

abstract class AllProductRepo {
  Future<List<ProductEntity>> getFeaturedProducts();
}
