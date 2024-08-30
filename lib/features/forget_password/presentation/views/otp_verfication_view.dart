import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/forget_password/presentation/views/widgets/otp_verfication_view_body.dart';

import '../../../../core/services/firebase_auth_service.dart';
import '../../data/repos/forget_pass_repo_impl.dart';
import '../view_models/cubit/forget_pass_cubit.dart';

// ignore: must_be_immutable
class OtpVerficationView extends StatelessWidget {
  OtpVerficationView({super.key, required this.phoneNumber});
  final String phoneNumber;
  String verfiyId = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPassCubit(
          ForgetPassRepoImpl(firebaseAuthService: FirebaseAuthService())),
      child: Scaffold(
        appBar: buildCustomAppBar(context, 'التحقق من الرمز', null),
        body: BlocConsumer<ForgetPassCubit, ForgetPassState>(
          listener: (context, state) {
            if (state is ForgetPassSuccsess) {
              verfiyId = state.verificationId;
            }
          },
          builder: (context, state) {
            return OtpVerficationViewBody(
              phoneNumber: phoneNumber,
              verfiyId: verfiyId,
            );
          },
        ),
      ),
    );
  }
}
