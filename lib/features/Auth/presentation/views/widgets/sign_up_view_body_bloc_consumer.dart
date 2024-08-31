import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/show_snack_bar_message.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../view_models/cubits/sign_up/sign_up_cubit.dart';
import 'sign_up_view_body.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpFailure) {
          showSnackBarMessage(context, state.errorMessage);
        }
        if (state is SignUpSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoading,
          progressIndicator: CircularProgressIndicator(
            color: AppColor.primaryColor,
          ),
          child: SignUpViewBody(),
        );
      },
    );
  }
}
