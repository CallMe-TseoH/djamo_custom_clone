import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:flutter/material.dart';

class AppNavigatorDrawer extends StatelessWidget {
  const AppNavigatorDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: ColorsHelper.softGrey,
    );
  }
}
