import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/show_snack_bar_message.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/view_models/cubits/sign_up/sign_up_cubit.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_password_form_field.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/have_already_account.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/terms_and_condition_widget.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

import 'custom_text_form_field.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool isTermsAndConditionsAccept = false;
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? name;
  String? email;
  String? password;
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
                hintText: S.of(context).fullname,
                keyboardType: TextInputType.name,
                onSaved: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: S.of(context).email,
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextPasswordFormField(
                hintText: S.of(context).password,
                icon: Icons.remove_red_eye,
                keyboardType: TextInputType.visiblePassword,
                onSaved: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              const SizedBox(
                height: 24,
              ),
              TermsAndCondition(
                onchange: (value) {
                  isTermsAndConditionsAccept = value;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                title: S.of(context).signup,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    if (isTermsAndConditionsAccept) {
                      BlocProvider.of<SignUpCubit>(context)
                          .createUserWithEmailAndPassword(
                        email: email!,
                        password: password!,
                        name: name!,
                      );
                    } else {
                      showSnackBarMessage(context, S.of(context).havetoaccept);
                    }
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 35,
              ),
              const HaveAlreadyAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
