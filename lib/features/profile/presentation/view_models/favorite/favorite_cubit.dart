import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/profile/domain/repos/favorite_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/favorite_model.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({required this.favoriteRepo}) : super(FavoriteInitial());
  final FavoriteRepo favoriteRepo;
  List<FavoriteModel> favoriteList = [];

  Future<void> getFavorite() async {
    favoriteList = await favoriteRepo.getFavorite();
    emit(FavoriteSuccess(favoriteList: favoriteList));
  }

  Future<void> addFavorite({required FavoriteModel favoriteModel}) async {
    emit(FavoriteLoading());
    try {
      await favoriteRepo.addFavorite(favoriteModel: favoriteModel);
    } catch (e) {
      emit(
        FavoriteError(
          message: e.toString(),
        ),
      );
    }
  }
}
