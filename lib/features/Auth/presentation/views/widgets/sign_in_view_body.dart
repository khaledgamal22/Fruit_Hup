import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/view_models/cubits/sign_in/sign_in_cubit.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_divider.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_sign_with_Button.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_password_form_field.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/dont_have_account.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

import '../../../../../uitilits/routing_name.dart';
import 'custom_text_form_field.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  String? email;
  String? password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                hintText: S.of(context).email,
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextPasswordFormField(
                hintText: S.of(context).password,
                keyboardType: TextInputType.visiblePassword,
                icon: Icons.remove_red_eye,
                onSaved: (value) {
                  password = value;
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutingName.forgetPass);
                    },
                    child: Text(
                      '${S.of(context).forgetpassword} ?',
                      style: AppStyle.styleSemibold13(context).copyWith(
                        color: const Color(0xff2D9F5D),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                title: S.of(context).signin,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    BlocProvider.of<SignInCubit>(context)
                        .loginWithEmailAndPassword(
                      email: email!,
                      password: password!,
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 35,
              ),
              const DontHaveAccountWidget(),
              const SizedBox(
                height: 30,
              ),
              const CustomDivider(),
              const SizedBox(
                height: 24,
              ),
              CustomSignWithButton(
                title: S.of(context).signgoogle,
                icon: Assets.imagesGoogle,
                onTap: () {
                  BlocProvider.of<SignInCubit>(context).signInWithGoogle();
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomSignWithButton(
                title: S.of(context).signinapple,
                icon: Assets.imagesApple,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomSignWithButton(
                onTap: () {
                  BlocProvider.of<SignInCubit>(context).signInWithFacebook();
                },
                title: S.of(context).signfacebook,
                icon: Assets.imagesFacbook,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
