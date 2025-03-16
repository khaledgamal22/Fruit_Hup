import 'package:flutter/widgets.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

import '../../../../../uitilits/routing_name.dart';
import '../../../../Auth/presentation/views/widgets/custom_text_form_field.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  String? phoneNumber;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Text(
              S.of(context).hintforgetpassword,
              style: AppStyle.styleSemibold16(context).copyWith(
                color: const Color(0xff616A6B),
              ),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              hintText: S.of(context).phonenumber,
              keyboardType: TextInputType.phone,
              onSaved: (value) {
                setState(() {
                  phoneNumber = value!;
                });
              },
            ),
            const SizedBox(height: 50),
            CustomButton(
              title: S.of(context).forgetpassword,
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  Navigator.pushNamed(
                    context,
                    RoutingName.otpVerficationView,
                    arguments: phoneNumber,
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
