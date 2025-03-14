import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/widgets/on_boardding_pageview_item.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/widgets/pageview_title.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: pageController,
        children: const [
          OnBoarddingPageviewItem(
            isZeroCurrentIndex: true,
            backgroundimage: Assets.imagesBackgroundonboard,
            backgroundimageColor: Color(0xffFCF4E3),
            image: Assets.imagesFruitbasketAmico1,
            title: PageViewTitle(
              text1: 'مرحبًا بك في',
              text2: 'HUB',
              text3: 'Fruits',
            ),
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          ),
          OnBoarddingPageviewItem(
            isZeroCurrentIndex: false,
            backgroundimage: Assets.imagesBackgroundonboard,
            backgroundimageColor: Color(0xffB0E8C7),
            image: Assets.imagesPineappleCuate1,
            title: PageViewTitle(
              text1: 'ابحث وتسوق',
            ),
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          ),
        ],
      ),
    );
  }
}
