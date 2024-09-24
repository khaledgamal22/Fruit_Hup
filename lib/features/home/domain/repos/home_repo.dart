import '../../../profile/data/models/favorite_model.dart';
import '../entities/product_entity.dart';

abstract class HomeRepo {
  Future<List<ProductEntity>> fetechHomeProducts();
  Future<bool> isProductInCart({required String id});
  bool checkIfProductIsFavorite({required FavoriteModel favoriteModel});
  void deletProductFromFavorite({required String id});
}
