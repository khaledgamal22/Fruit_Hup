import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';

import 'package:fruits_ecommerce_app/features/search/presentation/views/widgets/search_view_body.dart';

import '../../domain/repos/search_repo.dart';
import '../view_models/search/search_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SearchCubit(getIt.get<SearchRepo>()),
        child: SearchViewBody(),
      ),
    );
  }
}
