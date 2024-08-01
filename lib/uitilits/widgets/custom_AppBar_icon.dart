import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  const CustomAppBarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0xffF1F1F5),
          ),
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 18,
          color: Color(0xff0C0D0D),
        ),
      ),
    );
  }
}
