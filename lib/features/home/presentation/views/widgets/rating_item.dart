import 'package:flutter/material.dart';

import '../../../../../uitilits/app_style.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Ahmed Amr',
                  style: AppStyle.styleSemibold16(context),
                ),
                Text(
                  '25/06/2020',
                  style: AppStyle.styleRegular13(context),
                ),
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://thumbs.dreamstime.com/b/profile-picture-caucasian-male-employee-posing-office-happy-young-worker-look-camera-workplace-headshot-portrait-smiling-190186649.jpg'),
                  radius: 30,
                ),
                Positioned(
                  bottom: 8,
                  left: 45,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          color: Color(0xffFFC529).withOpacity(0.3),
                          blurRadius: 8,
                          spreadRadius: 5,
                          offset: Offset(0, 4),
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Color(0xffFFC529),
                    ),
                    child: Center(
                      child: Text(
                        '5.0',
                        style: AppStyle.styleSemibold11(context).copyWith(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها',
          style: AppStyle.styleRegular13(context),
        ),
      ],
    );
  }
}
