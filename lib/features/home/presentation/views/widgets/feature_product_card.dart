import 'package:flutter/material.dart';

import '../../../../../uitilits/app_style.dart';

class FeatureProductCard extends StatelessWidget {
  const FeatureProductCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(
            0xffF1F1F5,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'عام',
                  style: AppStyle.styleBold16(context).copyWith(
                    color: Color(0xff23AA49),
                  ),
                ),
                Text(
                  'الصلاحيه',
                  style: AppStyle.styleSemibold13(context).copyWith(
                    color: Color(0xff979899),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}