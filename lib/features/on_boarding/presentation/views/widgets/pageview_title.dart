import 'package:flutter/material.dart';

class PageViewTitle extends StatelessWidget {
  const PageViewTitle({super.key, required this.text1, this.text2, this.text3});

  final String text1;
  final String? text2;
  final String? text3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 23,
              fontWeight: FontWeight.w700,
              color: Color(0xff0C0D0D)),
        ),
        Text(
          text2 ?? '',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          text3 ?? '',
          style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 23,
              fontWeight: FontWeight.w700,
              color: Color(0xff1B5E37)),
        ),
      ],
    );
  }
}
