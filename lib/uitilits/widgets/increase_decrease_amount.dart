import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_floating_add_negative_button.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class increaseDecreaseAmount extends StatefulWidget {
  const increaseDecreaseAmount({
    super.key,
    required this.Size,
    this.amountChange,
  });
  final double Size;
  final ValueChanged<int>? amountChange;

  @override
  State<increaseDecreaseAmount> createState() => _increaseDecreaseAmountState();
}

class _increaseDecreaseAmountState extends State<increaseDecreaseAmount> {
  int count = 1;
  // @override
  // void didUpdateWidget(covariant increaseDecreaseAmount oldWidget) {
  //   widget.amountChange!(count);
  //   setState(() {

  //   });
  //   super.didUpdateWidget(oldWidget);
  // }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomFloatingAddButton(
          count: count,
          valueChange: (value) {
            setState(() {
              count = value;
              widget.amountChange!(count);
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
          count: count,
          valueChanged: (value) {
            setState(() {
              count = value;
              widget.amountChange!(count);
            });
          },
        ),
      ],
    );
  }
}
