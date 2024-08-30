import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../core/helper_functions/show_snack_bar_message.dart';
import '../../../../../uitilits/routing_name.dart';
import '../../view_models/cubits/sign_in/sign_in_cubit.dart';
import 'sign_in_view_body.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInFailure) {
          showSnackBarMessage(context, state.errorMessage);
        }
        if (state is SignInSuccess) {
          Navigator.pushReplacementNamed(context, RoutingName.home);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignInLoading,
          progressIndicator: CircularProgressIndicator(
            color: AppColor.primaryColor,
          ),
          child: SignInViewBody(),
        );
      },
    );
  }
}
