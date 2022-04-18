import 'package:djamo_custom_clone/src/modules/statistics/controllers/statistics_controller.dart';
import 'package:get/get.dart';

class StatisticsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => StatisticsController());
  }

}