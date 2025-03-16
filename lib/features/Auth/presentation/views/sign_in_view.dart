import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_in_repo.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/view_models/cubits/sign_in/sign_in_cubit.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';

import '../../../../uitilits/app_style.dart';
import 'widgets/sign_in_view_body_bloc_consumer.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<SignInRepo>()),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            leadingWidth: 80,
            title: Text(
              S.of(context).signin,
              style: AppStyle.styleBold19(context),
            ),
            centerTitle: true,
          ),
          body: const SignInViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
