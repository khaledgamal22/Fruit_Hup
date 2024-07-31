import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_border.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.icon,
      required this.keyboardType,
      this.onChanged,
      this.onSaved});

  final String hintText;
  final IconData? icon;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isSecurePass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      style: AppStyle.styleSemibold16(context),
      obscureText: widget.icon != null ? isSecurePass : false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        hintText: widget.hintText,
        hintStyle: AppStyle.styleBold13(context),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                isSecurePass = !isSecurePass;
              });
            },
            icon: Icon(
              widget.icon,
            ),
            color: Color(0xffC9CECF),
          ),
        ),
        filled: true,
        fillColor: Color(0xffF9FAFA),
        enabledBorder: buildBorder(Color(0xffE6E9EA)),
        errorBorder: buildBorder(Color(0xffE6E9EA)),
        focusedErrorBorder: buildBorder(Color(0xffE6E9EA)),
        disabledBorder: buildBorder(Color(0xffE6E9EA)),
        focusedBorder: buildBorder(Color(0xffE6E9EA)),
      ),
    );
  }
}
