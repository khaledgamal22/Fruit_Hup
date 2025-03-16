import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_password_form_field.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Column(
        children: [
          CustomTextPasswordFormField(
            hintText: S.of(context).newpassword,
            keyboardType: TextInputType.visiblePassword,
            icon: Icons.remove_red_eye,
          ),
          const SizedBox(height: 20),
          CustomTextPasswordFormField(
            hintText: S.of(context).confirmpassword,
            keyboardType: TextInputType.visiblePassword,
            icon: Icons.remove_red_eye,
          ),
          const SizedBox(height: 50),
          CustomButton(title: S.of(context).createnewpassword, onTap: () {}),
        ],
      ),
    );
  }
}
