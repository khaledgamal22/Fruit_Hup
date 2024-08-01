import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

int count = 0;

class CustomFloatingAddButton extends StatefulWidget {
  const CustomFloatingAddButton({
    super.key,
    required this.width,
    required this.height,
    required this.valueChange,
  });
  final double width;
  final double height;
  final ValueChanged<int> valueChange;

  @override
  State<CustomFloatingAddButton> createState() =>
      _CustomFloatingAddButtonState();
}

class _CustomFloatingAddButtonState extends State<CustomFloatingAddButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            widget.valueChange(count);
          });
        },
        child: Icon(
          Icons.add,
          size: 26,
          color: Colors.white,
        ),
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
        shape: CircleBorder(),
      ),
    );
  }
}

class CustomFloatingNegativeButton extends StatefulWidget {
  const CustomFloatingNegativeButton({
    super.key,
    required this.width,
    required this.height,
    required this.valueChanged,
  });
  final double width;
  final double height;
  final ValueChanged<int> valueChanged;

  @override
  State<CustomFloatingNegativeButton> createState() =>
      _CustomFloatingNegativeButtonState();
}

class _CustomFloatingNegativeButtonState
    extends State<CustomFloatingNegativeButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (count != 0) {
              count--;
            }
            widget.valueChanged(count);
          });
        },
        child: Icon(
          Icons.remove,
          size: 22,
          color: Color(0xff979899),
        ),
        backgroundColor: Color(0xffF3F5F7),
        elevation: 0,
        shape: CircleBorder(),
      ),
    );
  }
}
