import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/view_models/cubits/sign_in/sign_in_cubit.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_divider.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_sign_with_Button.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/dont_have_account.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

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
              SizedBox(
                height: 6,
              ),
              CustomTextFormField(
                hintText: 'البريد الاكترونى',
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'كلمة المرور',
                keyboardType: TextInputType.visiblePassword,
                icon: Icons.remove_red_eye,
                onSaved: (value) {
                  password = value;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: AppStyle.styleSemibold13(context).copyWith(
                      color: Color(0xff2D9F5D),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                title: 'تسجيل دخول',
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
              SizedBox(
                height: 35,
              ),
              DontHaveAccountWidget(),
              SizedBox(
                height: 30,
              ),
              CustomDivider(),
              SizedBox(
                height: 24,
              ),
              CustomSignWithButton(
                title: 'تسجيل بواسطة جوجل',
                icon: Assets.imagesGoogle,
                onTap: () {
                  BlocProvider.of<SignInCubit>(context).signInWithGoogle();
                },
              ),
              SizedBox(
                height: 16,
              ),
              CustomSignWithButton(
                title: 'تسجيل بواسطة أبل',
                icon: Assets.imagesApple,
              ),
              SizedBox(
                height: 16,
              ),
              CustomSignWithButton(
                onTap: () {
                  BlocProvider.of<SignInCubit>(context).signInWithFacebook();
                },
                title: 'تسجيل بواسطة فيسبوك',
                icon: Assets.imagesFacbook,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
