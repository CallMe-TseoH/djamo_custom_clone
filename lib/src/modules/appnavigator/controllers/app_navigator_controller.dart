import 'package:djamo_custom_clone/src/core/helpers/assets_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/helpers/app_navigator_text_key.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppNavigatorController extends GetxController{
  static List<Widget> barTitle = [
    SvgPicture.asset(AssetsHelper.djamoSvgLogo, height: SizesHelper.height(28),),
    TextComponent(textKey: AppNavigatorTextKey.statistics, fontWeight: FontWeight.w600, textAlign: TextAlign.center, fontSize: SizesHelper.fontSize(20),),
    TextComponent(textKey: AppNavigatorTextKey.cards, fontWeight: FontWeight.w600, textAlign: TextAlign.center, fontSize: SizesHelper.fontSize(20),),
    TextComponent(textKey: AppNavigatorTextKey.help, fontWeight: FontWeight.w600, textAlign: TextAlign.center, fontSize: SizesHelper.fontSize(20),),
  ];
  late PageController pageController;
  //
  RxInt currentIndex = 0.obs;
  //
  void __onInit(){
    pageController =PageController();
  }
  @override
  void onInit() {
    __onInit();
    super.onInit();
  }
  //
  void __onClose(){
    pageController.dispose();
  }
  @override
  void onClose() {
    __onClose();
    super.onClose();
  }
  //
  void updateCurrentIndex(int index){
    if(index != currentIndex.value){
      currentIndex.value = index;
      pageController.animateToPage(index, duration: const Duration(milliseconds: 150), curve: Curves.fastOutSlowIn,);
    }
  }
}