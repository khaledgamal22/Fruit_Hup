import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_border.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField(
      {super.key, this.isReadOnly = false, this.onTap, this.onSubmitted});

  final bool isReadOnly;
  final void Function()? onTap;
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 30,
            spreadRadius: 3,
            offset: Offset.zero,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onTap: onTap,
        readOnly: isReadOnly,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
            enabledBorder: buildBorder(
              Colors.white,
            ),
            focusedBorder: buildBorder(
              Colors.white,
            ),
            prefixIcon: Image.asset(
              Assets.imagesSearchNormal,
              color: AppColor.primaryColor,
            ),
            hintText: 'ابحث عن.......',
            hintStyle: AppStyle.styleRegular13(context),
            suffixIcon: Image.asset(
              Assets.imagesLinesearchicon,
            )),
      ),
    );
  }
}
