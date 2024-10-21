import '../entities/order_entity.dart';

abstract class OrdersRepo {
  Future<List<OrderEntity>> getMyOrders({
    required String currentUser,
  });
}
