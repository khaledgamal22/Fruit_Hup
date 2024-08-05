import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class InformationHeaderWidget extends StatelessWidget {
  const InformationHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                Assets.imagesPineappleCuate1,
              ),
            ),
            Positioned(
              top: 60,
              left: 4,
              right: 4,
              child: Container(
                width: 32,
                height: 32,
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.white,
                ),
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Color(0xffF9F9F9),
                  ),
                  child: Image.asset(
                    Assets.imagesCamera,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'محمد جمال',
              style: AppStyle.styleBold13(context).copyWith(
                color: Color(0xff131F46),
              ),
            ),
            Text(
              'mohamedgemy135@gmail.com',
              style: AppStyle.styleRegular13(context).copyWith(
                color: Color(0xff888FA0),
              ),
            )
          ],
        )
      ],
    );
  }
}
