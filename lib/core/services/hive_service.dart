import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/profile/data/models/favorite_model.dart';
import 'package:hive/hive.dart';

class HiveService {
  Future<void> addFavorite({required FavoriteModel favoriteModel}) async {
    var favoriteBox = await Hive.openBox<FavoriteModel>(getUser().userId);
    await favoriteBox.add(favoriteModel);
  }

  Future<List<FavoriteModel>> getFavorite() async {
    var favoriteBox = await Hive.openBox<FavoriteModel>(getUser().userId);
    return favoriteBox.values.toList();
  }

  Future<bool> doesFavoriteExist({required String id}) async {
    var favoriteBox = await Hive.openBox<FavoriteModel>(getUser().userId);
    return favoriteBox.values
        .where((existingFavorite) => existingFavorite.id == id)
        .isNotEmpty;
  }

  Future<void> deleteFavorite({required String id}) async {
    var favoriteBox = await Hive.openBox<FavoriteModel>(getUser().userId);
    await favoriteBox.delete(id);
  }
}
