import 'package:djamo_custom_clone/src/core/helpers/assets_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';

class TransactionRepository{
  TransactionRepository._();
  static Future<List<TransactionEntity>> getTransactions() async {
    final _transactions = [
      TransactionEntity(
          type: false,
          status: true,
          storedAt: DateTime.parse("2022-03-09T17:42:35+00:00"),
          amount: 81550.0,
          feeFreeAmount: 80000.0,
          fee: 550.0,
          balanceAfterTransaction: 82550.0,
          operator: "Moov Africa Money", operatorLogoLInk: AssetsHelper.moovMoneyLogo),
      TransactionEntity(
          type: false,
          status: true,
          storedAt: DateTime.parse("2022-02-09T17:42:35+00:00"),
          amount: 81550.0,
          feeFreeAmount: 80000.0,
          fee: 550.0,
          balanceAfterTransaction: 82550.0,
          operator: "Moov Africa Money", operatorLogoLInk: AssetsHelper.moovMoneyLogo),
      TransactionEntity(
          type: true,
          status: true,
          storedAt: DateTime.parse("2022-03-09T20:42:35+00:00"),
          amount: 80550.0,
          feeFreeAmount: 80000.0,
          fee: 550.0,
          balanceAfterTransaction: 2000.0,
          operator: "Western Union", operatorLogoLInk: AssetsHelper.westernUnionLogo),
      TransactionEntity(
          type: true,
          status: true,
          storedAt: DateTime.parse("2022-03-12T18:42:35+00:00"),
          amount: 750.0,
          feeFreeAmount: 700.0,
          fee: 50.0,
          balanceAfterTransaction: 1500.0,
          operator: "1XBet", operatorLogoLInk: AssetsHelper.oneXBet),
      TransactionEntity(
          type: true,
          status: true,
          storedAt: DateTime.parse("2022-02-12T15:42:35+00:00"),
          amount: 750.0,
          feeFreeAmount: 700.0,
          fee: 50.0,
          balanceAfterTransaction: 1500.0,
          operator: "1XBet", operatorLogoLInk: AssetsHelper.oneXBet),
      TransactionEntity(
          type: true,
          status: true,
          storedAt: DateTime.parse("2022-03-04T18:42:35+00:00"),
          amount: 150.0,
          feeFreeAmount: 100.0,
          fee: 50.0,
          balanceAfterTransaction: 800.0,
          operator: "1XBet", operatorLogoLInk: AssetsHelper.oneXBet),
      TransactionEntity(
          type: false,
          status: true,
          storedAt: DateTime.parse("2022-03-04T18:42:35+00:00"),
          amount: 150.0,
          feeFreeAmount: 100.0,
          fee: 50.0,
          balanceAfterTransaction: 800.0,
          operator: "MoMo", operatorLogoLInk: AssetsHelper.mtnMomoLogo),
      TransactionEntity(
          type: true,
          status: true,
          storedAt: DateTime.parse("2022-03-26T18:42:35+00:00"),
          amount: 550.0,
          feeFreeAmount: 500.0,
          fee: 50.0,
          balanceAfterTransaction: 1000.0,
          operator: "Orange", operatorLogoLInk: AssetsHelper.omLogo),
      TransactionEntity(
          type: false,
          status: true,
          storedAt: DateTime.parse("2022-03-26T18:42:35+00:00"),
          amount: 550.0,
          feeFreeAmount: 500.0,
          fee: 50.0,
          balanceAfterTransaction: 1000.0,
          operator: "Wave", operatorLogoLInk: AssetsHelper.waveLogo),
      TransactionEntity(
          type: false,
          status: true,
          storedAt: DateTime.parse("2022-02-26T18:42:35+00:00"),
          amount: 550.0,
          feeFreeAmount: 500.0,
          fee: 50.0,
          balanceAfterTransaction: 1000.0,
          operator: "Wave", operatorLogoLInk: AssetsHelper.waveLogo),
    ];
    _transactions.sort((a, b)=> b.storedAt.compareTo(a.storedAt));
    return _transactions;
  }
}