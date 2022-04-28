import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/domain/repositories/transaction_repository.dart';

class StatisticTransactionRepository {
  StatisticTransactionRepository._();
  static Future<List<TransactionEntity>> getTransactions() async {
    return TransactionRepository.getTransactions();
  }
}