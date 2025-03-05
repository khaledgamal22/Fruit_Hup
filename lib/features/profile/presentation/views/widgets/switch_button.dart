import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: Switch(
        value: isSelected,
        onChanged: (value) {
          isSelected = !isSelected;
          setState(() {});
        },
        activeColor: Colors.white,
        inactiveTrackColor: const Color(0xff888FA0),
        inactiveThumbColor: Colors.white,
        activeTrackColor: AppColor.primaryColor,
        thumbIcon: const WidgetStatePropertyAll(
          Icon(
            Icons.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
