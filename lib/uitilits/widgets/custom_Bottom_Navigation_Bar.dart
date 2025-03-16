import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
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
                label: S.of(context).home),
            label: S.of(context).home,
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
                label: S.of(context).products),
            label: S.of(context).products,
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
                label: S.of(context).cart),
            label: S.of(context).cart,
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
                label: S.of(context).profile),
            label: S.of(context).profile,
          ),
        ],
      ),
    );
  }
}
