import 'package:flutter/material.dart';

import 'widgets/payments_view_body.dart';

class PaymentsView extends StatelessWidget {
  const PaymentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentsViewBody(),
    );
  }
}
