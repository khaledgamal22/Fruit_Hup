import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/checkout_page_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_AppBar_icon.dart';

import 'row_check.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  List<String> barTitles = ['الشحن', 'العنوان', 'الدفع', 'المراجعه'];

  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (currentIndex == 0) {
                      Navigator.of(context).pop();
                    }
                    pageController.animateToPage(
                      currentIndex - 1,
                      duration: Duration(milliseconds: 100),
                      curve: Curves.easeIn,
                    );
                  },
                  child: CustomAppBarIcon(),
                ),
                SizedBox(width: 85),
                Text(
                  barTitles[currentIndex],
                  style: AppStyle.styleBold19(context),
                ),
              ],
            ),
            SizedBox(height: 20),
            RowCheck(
              currentIndex: currentIndex,
            ),
            SizedBox(height: 20),
            Expanded(
              child: CheckoutPageView(pageController: pageController),
            ),
          ],
        ),
      ),
    );
  }
}
