import 'package:djamo_custom_clone/src/modules/transaction/controllers/transaction_controller.dart';
import 'package:get/get.dart';

class TransactionBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionDetailController());
  }

}