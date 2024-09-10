import '../../data/models/favorite_model.dart';

abstract class FavoriteRepo {
  Future<void> addFavorite({required FavoriteModel favoriteModel});
  List<FavoriteModel> getFavorite();
  bool doesFavoriteExist(FavoriteModel favoriteModel);
}
