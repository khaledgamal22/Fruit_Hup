import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/core/services/hive_service.dart';
import 'package:meta/meta.dart';

import '../../../data/models/favorite_model.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({required this.hiveService}) : super(FavoriteInitial());
  final HiveService hiveService;
  List<FavoriteModel> favoriteList = [];

  void getFavorite() {
    favoriteList = hiveService.getFavorite();
    emit(FavoriteSuccess(favoriteList: favoriteList));
  }

  Future<void> addFavorite({required FavoriteModel favoriteModel}) async {
    emit(FavoriteLoading());
    try {
      await hiveService.addFavorite(favoriteModel: favoriteModel);
    } catch (e) {
      emit(
        FavoriteError(
          message: e.toString(),
        ),
      );
    }
  }
}
