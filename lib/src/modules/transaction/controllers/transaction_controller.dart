import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:get/get.dart';

class TransactionDetailController extends GetxController{
  late TransactionEntity? transaction;
  @override
  void onInit() {
    transaction = Get.arguments as TransactionEntity;
    super.onInit();
  }
}