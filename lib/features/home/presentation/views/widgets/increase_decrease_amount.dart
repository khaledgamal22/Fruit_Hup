import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/custom_floating_add_negative_button.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class increaseDecreaseAmount extends StatefulWidget {
  const increaseDecreaseAmount({
    super.key,
    required this.Size,
  });
  final double Size;

  @override
  State<increaseDecreaseAmount> createState() => _increaseDecreaseAmountState();
}

class _increaseDecreaseAmountState extends State<increaseDecreaseAmount> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomFloatingAddButton(
          valueChange: (value) {
            setState(() {
              count = value;
            });
          },
          width: widget.Size,
          height: widget.Size,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          '${count}',
          style: AppStyle.styleBold16(context).copyWith(
            color: Color(0xff06140C),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        CustomFloatingNegativeButton(
          width: widget.Size,
          height: widget.Size,
          valueChanged: (value) {
            setState(() {
              count = value;
            });
          },
        ),
      ],
    );
  }
}
