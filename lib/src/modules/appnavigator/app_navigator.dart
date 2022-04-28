import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/about/pages/about_page.dart';
import 'package:djamo_custom_clone/src/modules/account/view/pages/account_page.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/components/app_bottom_navigation_bar.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/components/app_navigator_drawer.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/components/app_navigator_top_bar.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/controllers/app_navigator_controller.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/helpers/app_navigator_text_key.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/statistics/view/pages/statistics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AppNavigator extends GetView<AppNavigatorController> {
  static const routeName = "/appNavigator";

  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _buildSoftGrey,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(systemNavigationBarColor: _buildSoftGrey, statusBarColor: _buildSoftGrey),
        elevation: 0,
        backgroundColor: _buildSoftGrey,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Obx(() {
          return AppNavigatorController.barTitle[controller.currentIndex.value];
        }),
        actions: [
          Obx(() {
            if(controller.currentIndex.value==0) {
              return Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.commentDots,
                      size: SizesHelper.fontSize(24),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.bell,
                      size: SizesHelper.fontSize(24),
                    ))
              ],
            );
            }
            return const Separator(value: 0);
          }),
        ],
      ),
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          AccountPage(),
          StatisticsPage(),
          AboutPage(),
          AboutPage(),
        ],
      ),
      drawer: const AppNavigatorDrawer(),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }

  Color get _buildSoftGrey => ColorsHelper.softGrey;

  Widget buildSvgPicture(int index, [String? path]) {
    if (path != null) {
      return SvgPicture.asset(
        path,
        height: SizesHelper.height(38),
        color: controller.currentIndex.value == index ? ColorsHelper.orange : Colors.black,
      );
    }
    return const Icon(Icons.home);
  }
}
