import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/best_seller_section.dart';

class AllBestSellerViewBody extends StatelessWidget {
  const AllBestSellerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 20),
                BestSellerSection(
                  ishome: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
