import 'package:djamo_custom_clone/src/modules/cards/controllers/cards_controller.dart';
import 'package:get/get.dart';

class CardsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CardsController());
  }

}