import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/custom_home_appBar.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/product_card.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/search_text_filed.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CustomHomeAppBar(),
                  SizedBox(height: 20),
                  SearchTextField(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            ProductGridView(),
          ],
        ),
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) => ProductCard(),
      itemCount: 8,
    );
  }
}
