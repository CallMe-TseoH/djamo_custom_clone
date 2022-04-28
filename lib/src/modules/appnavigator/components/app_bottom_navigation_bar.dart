import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/controllers/app_navigator_controller.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/helpers/app_navigator_text_key.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AppBottomNavigationBar extends GetView<AppNavigatorController> {
  const AppBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        backgroundColor: ColorsHelper.softGrey,
        selectedItemColor: ColorsHelper.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          color: ColorsHelper.red
        ),

        unselectedIconTheme: const IconThemeData(color: ColorsHelper.grey),
        elevation: 4,
        currentIndex: controller.currentIndex.value,
        onTap: (index) {
          controller.updateCurrentIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.wallet, size: _getIconSize,), label: AppNavigatorTextKey.account.tr),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.chartSimple, size: _getIconSize,), label: AppNavigatorTextKey.statistics.tr),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.creditCard, size: _getIconSize,), label: AppNavigatorTextKey.cards.tr),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.headset, size: _getIconSize,), label: AppNavigatorTextKey.help.tr),
        ],
      );
    });
  }

  double get _getIconSize => SizesHelper.fontSize(18);
}
