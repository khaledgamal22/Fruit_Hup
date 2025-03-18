import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/profile/domain/repos/profile_edit_repo.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/view_models/profile_edit/profile_edit_cubit.dart';

import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/information_profile_view_body.dart';

class InformationProfileView extends StatelessWidget {
  const InformationProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ProfileEditCubit(
          profileEditRepo: getIt.get<ProfileEditRepo>(),
        ),
        child: InformationProfileViewBody(),
      ),
    );
  }
}
