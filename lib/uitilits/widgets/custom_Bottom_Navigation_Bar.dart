import 'package:flutter/material.dart';
import '../app_images.dart';
import '../app_style.dart';
import 'active_icon_bottom_navigation.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar(
      {super.key, required this.indexChanged, required this.currentIndex});
  int currentIndex;
  final ValueChanged<int> indexChanged;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(30),
        //   topRight: Radius.circular(30),
        // ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 6,
            blurRadius: 20,
          ),
        ],
      ),
      child: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.basic,
        elevation: 30,
        onTap: (value) {
          widget.currentIndex = value;
          widget.indexChanged(widget.currentIndex);
          setState(() {});
        },
        currentIndex: widget.currentIndex,
        showSelectedLabels: false,
        selectedLabelStyle: AppStyle.styleSemibold11(context),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              Assets.imagesHome,
            ),
            activeIcon: ActiveIconBottomNavigation(
                icon: Image.asset(
                  Assets.imagesActivehome,
                ),
                label: 'الرئيسية'),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              Assets.imagesProducts,
            ),
            activeIcon: ActiveIconBottomNavigation(
                icon: Image.asset(
                  Assets.imagesActiveproducts,
                ),
                label: 'المنتجات'),
            label: 'المنتجات',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              Assets.imagesShoppingCart,
            ),
            activeIcon: ActiveIconBottomNavigation(
                icon: Image.asset(
                  Assets.imagesActiveshoppingcart,
                ),
                label: 'السلة'),
            label: 'السلة',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(
              Assets.imagesUser,
            ),
            activeIcon: ActiveIconBottomNavigation(
                icon: Image.asset(
                  Assets.imagesActiveuser,
                ),
                label: 'حسابي'),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
