import 'package:djamo_custom_clone/src/modules/about/controllers/about_controller.dart';
import 'package:get/get.dart';

class AboutBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AboutController());
  }

}