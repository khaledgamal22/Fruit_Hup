import '../../data/models/favorite_model.dart';

abstract class FavoriteRepo {
  Future<void> addFavorite({required FavoriteModel favoriteModel});
  Future<List<FavoriteModel>> getFavorite();
}
