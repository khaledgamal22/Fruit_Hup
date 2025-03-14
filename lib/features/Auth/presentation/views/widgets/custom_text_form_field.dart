import 'package:flutter/material.dart';

import '../../../../../core/helper_functions/build_border.dart';
import '../../../../../uitilits/app_style.dart';

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
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        hintText: widget.hintText,
        hintStyle: AppStyle.styleBold13(context),
        suffixIcon: widget.icon != null
            ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Icon(
                  widget.icon,
                  color: const Color(0xffC9CECF),
                ),
              )
            : null,
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        enabledBorder: buildBorder(const Color(0xffE6E9EA)),
        errorBorder: buildBorder(const Color(0xffE6E9EA)),
        focusedErrorBorder: buildBorder(const Color(0xffE6E9EA)),
        disabledBorder: buildBorder(const Color(0xffE6E9EA)),
        focusedBorder: buildBorder(const Color(0xffE6E9EA)),
      ),
    );
  }
}
