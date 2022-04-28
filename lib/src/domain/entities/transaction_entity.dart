import 'package:equatable/equatable.dart';


extension TransactionType on TransactionEntity{
  bool get isExpense => type==true;
}

class TransactionEntity extends Equatable {
  final bool type;
  final bool status;
  final DateTime storedAt;
  final double amount;
  final double feeFreeAmount;
  final double fee;
  final double balanceAfterTransaction;
  final String? cardID;
  final String operator;
  final String? operatorLogoLInk;

  const TransactionEntity(
      {required this.type,
      required this.status,
      required this.storedAt,
      required this.amount,
      required this.feeFreeAmount,
      required this.fee,
      required this.balanceAfterTransaction,
      this.cardID,
      required this.operator,
      this.operatorLogoLInk});

  @override
  List<Object?> get props => [storedAt, type, status, amount, feeFreeAmount, fee, balanceAfterTransaction, cardID, operator, operatorLogoLInk];
}
