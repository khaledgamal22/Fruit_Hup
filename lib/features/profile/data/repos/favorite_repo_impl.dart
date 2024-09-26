import 'package:fruits_ecommerce_app/features/profile/data/models/favorite_model.dart';

import '../../../../core/services/hive_service.dart';
import '../../domain/repos/favorite_repo.dart';

class FavoriteRepoImpl implements FavoriteRepo {
  final HiveService hiveService;

  FavoriteRepoImpl({required this.hiveService});
  @override
  Future<void> addFavorite({required FavoriteModel favoriteModel}) async {
    await hiveService.addFavorite(favoriteModel: favoriteModel);
  }

  @override
  Future<List<FavoriteModel>> getFavorite() async {
    return await hiveService.getFavorite();
  }
}
