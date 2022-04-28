import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppNavigatorTopBar extends StatelessWidget {
  const AppNavigatorTopBar({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(systemNavigationBarColor: _buildSoftGrey, statusBarColor: _buildSoftGrey),
      elevation: 0,
      backgroundColor: _buildSoftGrey,
    );
  }
  Color get _buildSoftGrey => ColorsHelper.softGrey;

}
