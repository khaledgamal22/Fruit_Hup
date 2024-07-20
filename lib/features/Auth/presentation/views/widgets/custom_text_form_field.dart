import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.icon,
      required this.keyboardType});

  final String hintText;
  final IconData? icon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      style: AppStyle.styleSemibold16(context),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        hintText: hintText,
        hintStyle: AppStyle.styleBold13(context),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Icon(
            icon,
            color: Color(0xffC9CECF),
          ),
        ),
        filled: true,
        fillColor: Color(0xffF9FAFA),
        enabledBorder: buildBorder(),
        disabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        width: 1,
        color: Color(0xffE6E9EA),
      ),
    );
  }
}
