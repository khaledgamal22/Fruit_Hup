import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/search/presentation/views/widgets/search_empty_widget.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

import '../../../../../uitilits/app_style.dart';
import '../../../../home/presentation/views/widgets/product_card.dart';
import '../../view_models/search/search_cubit.dart';
import 'recent_result_search.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      if (state is SearchSuccess) {
        if (state.products.isEmpty) {
          return const SearchEmpty();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'نتائج البحث ',
              style: AppStyle.styleRegular13(context),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: state.products.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ProductCard(
                  productEntity: state.products[index],
                );
              },
            ),
          ],
        );
      } else if (state is SearchFailure) {
        return Center(child: Text(state.errorMessage));
      } else if (state is SearchLoading) {
        return Center(
            child: CircularProgressIndicator(
          color: AppColor.primaryColor,
        ));
      } else {
        return RecentResultsSearch();
      }
    });
  }
}
