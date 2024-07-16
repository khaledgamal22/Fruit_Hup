import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

abstract class AppStyle {
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: 12,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular13(BuildContext context) {
    return TextStyle(
      color: Color(0xff949D9E),
      fontSize: 13,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: Color(0xff949D9E),
      fontSize: 16,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemibold11(BuildContext context) {
    return TextStyle(
      color: AppColor.primaryColor,
      fontSize: 11,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemibold13(BuildContext context) {
    return TextStyle(
      color: Color(0xff064061),
      fontSize: 13,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemibold16(BuildContext context) {
    return TextStyle(
      color: AppColor.headerTextColor,
      fontSize: 16,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold13(BuildContext context) {
    return TextStyle(
      color: Color(0xff949D9E),
      fontSize: 13,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: 16,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold19(BuildContext context) {
    return TextStyle(
      color: AppColor.headerTextColor,
      fontSize: 19,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold23(BuildContext context) {
    return TextStyle(
      color: AppColor.headerTextColor,
      fontSize: 23,
      fontFamily: 'Cairo',
      fontWeight: FontWeight.w700,
    );
  }
}

// double getResponsiveFont(BuildContext context, {required double fontsize}) {
//   double scaleFactor = getScaleFactor(context);
//   double responsiveFont = scaleFactor * fontsize;
//   double lowerLimit = fontsize * 0.8;
//   double upperLimit = fontsize * 1.3;
//   responsiveFont.clamp(lowerLimit, upperLimit);
//   return responsiveFont;
// }

// double getScaleFactor(BuildContext context) {
  
//   double width = MediaQuery.sizeOf(context).width;
//   if (width < SizeConfig.tablet) {
//     return width / 550;
//   } else if (width > SizeConfig.tablet && width <= SizeConfig.desktop) {
//     return width / 1000;
//   } else {
//     return width / 1920;
//   }
// }
