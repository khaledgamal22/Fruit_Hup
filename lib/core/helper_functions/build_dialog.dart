import 'package:flutter/material.dart';

import '../../features/profile/presentation/views/widgets/custom_dialog.dart';

Future<dynamic> buildDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return CustomDialog();
    },
  );
}
