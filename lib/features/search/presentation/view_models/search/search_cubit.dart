import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/search/domain/repos/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../../home/domain/entities/product_entity.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;

  List<ProductEntity> products = [];
  Future<void> searchProducts({required String query}) async {
    try {
      emit(SearchLoading());
      products = await searchRepo.searchForProducts(searchValue: query);
      emit(SearchSuccess(products: products));
    } catch (e) {
      emit(SearchFailure(errorMessage: e.toString()));
    }
  }
}
