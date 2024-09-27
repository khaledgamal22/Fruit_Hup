import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/search_text_filed.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_notification_icon.dart';
import '../../view_models/search/search_cubit.dart';
import 'search_body.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

String searchText = '';

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              buildCustomAppBar(
                context,
                'البحث',
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomNotificationIcon(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SearchTextField(
                  onSubmitted: (value) async {
                    setState(() async {
                      searchText = value;
                      await BlocProvider.of<SearchCubit>(context)
                          .searchProducts(query: searchText);
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchBody(),
          ),
        )
      ],
    );
  }
}
