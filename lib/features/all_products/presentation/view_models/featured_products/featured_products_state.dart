part of 'featured_products_cubit.dart';

@immutable
sealed class FeaturedProductsState {}

final class FeaturedProductsInitial extends FeaturedProductsState {}

final class FeaturedProductsSuccess extends FeaturedProductsState {
  final List<ProductEntity> products;
  FeaturedProductsSuccess({required this.products});
}

final class FeaturedProductsLoading extends FeaturedProductsState {}

final class FeaturedProductsFailure extends FeaturedProductsState {
  final String errorMessage;
  FeaturedProductsFailure({required this.errorMessage});
}
