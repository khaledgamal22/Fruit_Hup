import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_up_repo.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/view_models/cubits/sign_up/sign_up_cubit.dart';

import 'widgets/sign_up_view_body_bloc_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt.get<SignUpRepo>(),
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: buildCustomAppBar(context, 'حساب جديد', null),
          body: const SignUpViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
