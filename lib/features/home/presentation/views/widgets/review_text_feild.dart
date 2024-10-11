import 'package:flutter/material.dart';

import '../../../../../uitilits/app_style.dart';

class ReviewTextField extends StatelessWidget {
  final String hintText;

  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  const ReviewTextField(
      {super.key,
      required this.hintText,
      required this.keyboardType,
      this.onChanged,
      this.onSaved});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffE6E9EA)),
      ),
      child: Center(
        child: TextFormField(
          keyboardType: keyboardType,
          onChanged: onChanged,
          onSaved: onSaved,
          style: AppStyle.styleSemibold16(context),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            hintText: hintText,
            hintStyle: AppStyle.styleRegular13(context).copyWith(
              color: Color(0xff111719),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(7),
              child: CircleAvatar(
                backgroundColor: Color(0xff111719),
                radius: 15,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
