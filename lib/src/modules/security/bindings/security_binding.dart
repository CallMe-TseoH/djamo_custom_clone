import 'package:djamo_custom_clone/src/modules/security/controllers/security_controller.dart';
import 'package:get/get.dart';

class SecurityBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityController());
  }

}