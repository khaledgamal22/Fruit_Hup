part of 'favorite_cubit.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}

final class FavoriteLoading extends FavoriteState {}

final class FavoriteSuccess extends FavoriteState {
  final List<FavoriteModel> favoriteList;
  FavoriteSuccess({required this.favoriteList});
}

final class FavoriteError extends FavoriteState {
  final String message;
  FavoriteError({required this.message});
}
