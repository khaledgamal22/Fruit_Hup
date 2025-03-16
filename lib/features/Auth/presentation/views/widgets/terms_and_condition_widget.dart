import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_checkBox.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key, required this.onchange});

  final ValueChanged<bool> onchange;
  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool boxcheck = false;

  _TermsAndConditionState();
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
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(TextSpan(
            children: [
              TextSpan(
                text: '${S.of(context).applyconditions} ',
                style: AppStyle.styleSemibold13(context).copyWith(
                  color: const Color(0xff949D9E),
                ),
              ),
              TextSpan(
                text: S.of(context).conditions,
                style: AppStyle.styleSemibold13(context).copyWith(
                  color: const Color(0xff2D9F5D),
                ),
              ),
            ],
          )),
        )
      ],
    );
  }
}
