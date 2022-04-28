import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:flutter/material.dart';

class AppSpin extends StatelessWidget {
  const AppSpin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive(valueColor: AlwaysStoppedAnimation(ColorsHelper.blue));
  }
}
