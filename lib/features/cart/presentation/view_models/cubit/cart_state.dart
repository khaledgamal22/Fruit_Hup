part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartSuccess extends CartState {
  final List<CartEntity> cartList;
  final num total;
  CartSuccess({required this.total, required this.cartList});
}

final class CartAdded extends CartState {}

final class CartUpdated extends CartState {}

final class CartLoading extends CartState {}

final class CartFailure extends CartState {
  final String errorMessage;
  CartFailure({required this.errorMessage});
}
