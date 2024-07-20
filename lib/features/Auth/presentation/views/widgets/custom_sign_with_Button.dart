import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CustomSignWithButton extends StatelessWidget {
  const CustomSignWithButton(
      {super.key, required this.title, required this.icon});

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 54,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffDDDFDF),
        ),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          children: [
            Image.asset(icon),
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: AppStyle.styleSemibold16(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
