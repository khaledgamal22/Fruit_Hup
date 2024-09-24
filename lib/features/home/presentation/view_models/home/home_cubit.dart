import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/features/home/domain/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  final HomeRepo homeRepo;
  List<ProductEntity> products = [];
  Future<void> getProducts() async {
    try {
      emit(HomeLoading());
      products = await homeRepo.fetechHomeProducts();
      emit(
        HomeSuccess(products: products),
      );
    } catch (e) {
      emit(
        HomeFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<bool> isProdutInCart({required String id}) async {
    return await homeRepo.isProductInCart(id: id);
  }
}
