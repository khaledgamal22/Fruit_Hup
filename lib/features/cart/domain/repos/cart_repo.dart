import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/cart_entity.dart';

abstract class CartRepo {
  //Future<Either<Failure, List<CartEntity>>> getCartData();
  Future addCartData({required CartEntity cartEntity});
  Future<void> deleteCartData({required String id});
}
