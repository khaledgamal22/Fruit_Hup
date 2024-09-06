import 'package:flutter/material.dart';

import '../../../../../uitilits/app_style.dart';
import '../../../../Auth/presentation/views/widgets/custom_checkBox.dart';

class CheckTypeCredit extends StatefulWidget {
  const CheckTypeCredit({super.key, required this.onchange});
  final ValueChanged<bool> onchange;

  @override
  State<CheckTypeCredit> createState() => _CheckTypeCreditState();
}

class _CheckTypeCreditState extends State<CheckTypeCredit> {
  bool boxcheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            boxcheck = !boxcheck;
            widget.onchange(boxcheck);
            setState(() {});
          },
          child: CustomCheckBox(
            isChecked: boxcheck,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          'جعل البطاقة افتراضية',
          style: AppStyle.styleSemibold13(context).copyWith(
            color: Color(0xff616A6B),
          ),
        ),
      ],
    );
  }
}
