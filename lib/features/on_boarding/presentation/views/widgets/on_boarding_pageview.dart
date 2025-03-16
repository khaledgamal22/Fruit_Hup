import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/widgets/on_boardding_pageview_item.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/widgets/pageview_title.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';

import '../../../../../generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: pageController,
        children: [
          OnBoarddingPageviewItem(
            isZeroCurrentIndex: true,
            backgroundimage: Assets.imagesBackgroundonboard,
            backgroundimageColor: const Color(0xffFCF4E3),
            image: Assets.imagesFruitbasketAmico1,
            title: PageViewTitle(
              text1: S.of(context).welcomemessage,
              text2: 'HUB',
              text3: 'Fruits',
            ),
            subTitle: S.of(context).welcomemessagedetails,
          ),
          OnBoarddingPageviewItem(
            isZeroCurrentIndex: false,
            backgroundimage: Assets.imagesBackgroundonboard,
            backgroundimageColor: const Color(0xffB0E8C7),
            image: Assets.imagesPineappleCuate1,
            title: PageViewTitle(
              text1: S.of(context).secondonboardingmessage,
            ),
            subTitle: S.of(context).secondonboardingmessagedetails,
          ),
        ],
      ),
    );
  }
}
