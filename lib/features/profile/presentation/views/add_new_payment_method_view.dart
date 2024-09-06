import 'package:flutter/material.dart';

import 'widgets/add_new_payment_method_view_body.dart';

class AddNewPaymentMethodView extends StatelessWidget {
  const AddNewPaymentMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddNewPaymentMethodViewBody(),
    );
  }
}
