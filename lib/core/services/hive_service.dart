import 'package:fruits_ecommerce_app/features/profile/data/models/favorite_model.dart';
import 'package:hive/hive.dart';

import '../../uitilits/backend_endpoints.dart';

class HiveService {
  Future<void> addFavorite({required FavoriteModel favoriteModel}) async {
    var favoriteBox = Hive.box<FavoriteModel>(BackendEndpoints.favoriteBox);
    await favoriteBox.add(favoriteModel);
  }

  List<FavoriteModel> getFavorite() {
    var favoriteBox = Hive.box<FavoriteModel>(BackendEndpoints.favoriteBox);
    return favoriteBox.values.toList();
  }

  bool doesFavoriteExist(FavoriteModel favoriteModel) {
    var favoriteBox = Hive.box<FavoriteModel>(BackendEndpoints.favoriteBox);
    return favoriteBox.values
        .where((existingFavorite) => existingFavorite.id == favoriteModel.id)
        .isNotEmpty;
  }

  Future<void> deleteFavorite({required String id}) async {
    var favoriteBox = Hive.box<FavoriteModel>(BackendEndpoints.favoriteBox);
    await favoriteBox.delete(id);
  }
}
