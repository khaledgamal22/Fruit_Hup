import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class OnBoarddingPageviewItem extends StatelessWidget {
  const OnBoarddingPageviewItem(
      {super.key,
      required this.image,
      required this.backgroundimage,
      required this.subTitle,
      required this.title,
      required this.backgroundimageColor,
      required this.isZeroCurrentIndex});

  final String image, backgroundimage, subTitle;
  final Color backgroundimageColor;
  final Widget title;
  final bool isZeroCurrentIndex;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: height * 0.5,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Image.asset(
                  backgroundimage,
                  color: backgroundimageColor,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: -height * 0.5 + 270,
                top: 0,
                child: Image.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isZeroCurrentIndex,
                child: Positioned(
                  right: 12,
                  top: 12,
                  child: Text(
                    'تخطى',
                    style: AppStyle.styleRegular13(context),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 64,
        ),
        title,
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            style: AppStyle.styleSemibold13(context).copyWith(
              color: Color(0xff4E5556),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
