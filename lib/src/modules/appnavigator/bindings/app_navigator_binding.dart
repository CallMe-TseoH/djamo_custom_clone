import 'package:djamo_custom_clone/src/modules/account/controllers/account_controller.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/controllers/app_navigator_controller.dart';
import 'package:djamo_custom_clone/src/modules/statistics/controllers/statistics_controller.dart';
import 'package:get/get.dart';

class AppNavigatorBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigatorController());
    Get.lazyPut(() => AccountController());
    Get.lazyPut(() => StatisticsController());
  }

}