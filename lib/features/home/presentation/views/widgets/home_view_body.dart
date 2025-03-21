import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/best_seller_section.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/custom_home_appBar.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/search_text_filed.dart';

import '../../../../../uitilits/routing_name.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          right: 16,
          left: 16,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const CustomHomeAppBar(),
                  const SizedBox(height: 20),
                  SearchTextField(
                    isReadOnly: true,
                    onTap: () {
                      Navigator.pushNamed(context, RoutingName.search);
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: BestSellerSection(
                isvisible: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
