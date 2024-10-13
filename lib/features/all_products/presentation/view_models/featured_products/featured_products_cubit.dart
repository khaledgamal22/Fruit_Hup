import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/all_products/domain/repos/all_product_repo.dart';
import 'package:meta/meta.dart';

import '../../../../home/domain/entities/product_entity.dart';

part 'featured_products_state.dart';

class FeaturedProductsCubit extends Cubit<FeaturedProductsState> {
  FeaturedProductsCubit({required this.allProductRepo})
      : super(FeaturedProductsInitial());
  final AllProductRepo allProductRepo;
  Future<void> getFeaturedProducts() async {
    emit(FeaturedProductsLoading());
    try {
      List<ProductEntity> products = await allProductRepo.getFeaturedProducts();
      emit(FeaturedProductsSuccess(products: products));
    } catch (e) {
      emit(FeaturedProductsFailure(errorMessage: e.toString()));
    }
  }
}
