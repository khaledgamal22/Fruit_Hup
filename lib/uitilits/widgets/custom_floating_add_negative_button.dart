import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';

// ignore: must_be_immutable
class CustomFloatingAddButton extends StatefulWidget {
  CustomFloatingAddButton({
    super.key,
    required this.width,
    required this.height,
    required this.valueChange,
    this.count = 1,
  });
  final double width;
  final double height;
  final ValueChanged<int> valueChange;
  int count;

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
            widget.count++;
            widget.valueChange(widget.count);
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

// ignore: must_be_immutable
class CustomFloatingNegativeButton extends StatefulWidget {
  CustomFloatingNegativeButton({
    super.key,
    required this.width,
    required this.height,
    required this.valueChanged,
    this.count = 0,
  });
  final double width;
  final double height;
  final ValueChanged<int> valueChanged;
  int count;

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
            if (widget.count != 0) {
              widget.count--;
            }
            widget.valueChanged(widget.count);
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
