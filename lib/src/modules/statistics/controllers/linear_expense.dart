import 'package:equatable/equatable.dart';

class LinearExpense extends Equatable {

  final int day;
  final int expense;

  const LinearExpense({required this.day, required this.expense});

  @override
  List<Object?> get props => [day, expense];
}
