import 'package:charts_flutter/flutter.dart' as charts;
import 'package:dartx/dartx.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/statistics/controllers/linear_expense.dart';
import 'package:djamo_custom_clone/src/modules/statistics/domain/repositories/statistic_transaction_repository.dart';
import 'package:djamo_custom_clone/src/modules/statistics/view/components/my_chart_symbol_render.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


part 'selected_chart_value_point.dart';

enum TransactionTypeEnum {expense, reload, all}

class StatisticsController extends GetxController{
  RxBool chartsListenerHasSelectedValue = false.obs;
  Rx<_SelectedChartValuePoint> selectedChartValuePoint = const _SelectedChartValuePoint(y: 0, x: 0).obs;
  //
  RxInt selectedMonth = DateTime.now().month.obs;

  Rx<TransactionTypeEnum> selectedTransactionType = TransactionTypeEnum.expense.obs;
  RxList<TransactionEntity> transactions = <TransactionEntity>[].obs;
  //

  void onChangedChartValueListener(charts.SelectionModel<num> v){
    if(v.hasAnySelection){
      if(v.selectedDatum.isNotEmpty){
        if(chartsListenerHasSelectedValue.isFalse) chartsListenerHasSelectedValue.toggle();
        final _value = v.selectedDatum.first.datum as LinearExpense;
        MyChartSymbolRender.value = "${_value.day}/${selectedMonth.value}\n"+_value.expense.toString();
/*        selectedChartValuePoint.value= SelectedChartValuePoint(x: SizesHelper.width(_value.day.toDouble()), y: SizesHelper.height(_value.expense.toDouble()));
        selectedChartValuePoint.refresh();
        print(selectedChartValuePoint.value.x);*/

      }else{
        if(chartsListenerHasSelectedValue.isTrue) chartsListenerHasSelectedValue.toggle();

      }
    }else{
      if(chartsListenerHasSelectedValue.isTrue) chartsListenerHasSelectedValue.toggle();
    }
  }

  void updateSelectedChartValuePoint(PointerDownEvent event){
    if(chartsListenerHasSelectedValue.isTrue) {
      final _x = (SizesHelper.width(event.localPosition.dx-35));
      final _y = (SizesHelper.height(event.localPosition.dy-14));
      selectedChartValuePoint.value= _SelectedChartValuePoint(x: _x, y: _y);
      selectedChartValuePoint.refresh();
      print(selectedChartValuePoint.value);
    }
  }

  List<LinearExpense> get _expenses {
    final _now = DateTime.now();
    List<TransactionEntity> _rawTransactions = List.from(transactions);
    final _expenses = _rawTransactions.where((element) => element.isExpense && element.storedAt.month == selectedMonth.value).toList();
    final _firstExpense = _expenses.first;
    final _dayInThoseExpenseMonth = selectedMonth.value == _now.month? _now.day: DateTime(_firstExpense.storedAt.year, _firstExpense.storedAt.month, 0).day;
    int? _lastExpense;
    final _linearExpenses = List.generate(_dayInThoseExpenseMonth, (index) {
      final TransactionEntity? _availableExpenseOnFirstMonthDay =
      _expenses.firstWhereOrNull((element) => element.storedAt.day == (index + 1));
      if (index > 0) {
        if (_availableExpenseOnFirstMonthDay != null) {
          _lastExpense = _availableExpenseOnFirstMonthDay.feeFreeAmount.toInt();
        }
      } else {
        if (_availableExpenseOnFirstMonthDay != null) {
          _lastExpense = _availableExpenseOnFirstMonthDay.feeFreeAmount.toInt();
        } else {
          _lastExpense = 0;
        }
      }
      return LinearExpense(day: index, expense: _lastExpense ?? 0);
    });
    return _linearExpenses;
  }

  List<charts.Series<LinearExpense, int>> getChartsSeries() {
    return [
      charts.Series<LinearExpense, int>(
        data: _expenses,
        id: 'Tablet',
        colorFn: (_, __) => charts.Color.fromOther(color: const charts.Color(r: 0x09, g: 0x32, b: 0xFE)),
        // areaColorFn: (_, __) => charts.Color.fromHex(code: "0932FE"),
        domainFn: (expense, _) => expense.day,
        measureFn: (expense, _) => expense.expense,
      )
    ];
  }

  //
  RxBool onStartingInit = true.obs;
  Future<void> __onInit() async {
    if(onStartingInit.isFalse) {
      onStartingInit.toggle();
    }
    transactions.value = await StatisticTransactionRepository.getTransactions();
    if(onStartingInit.isTrue) {
      await Future.delayed(const Duration(seconds: 1));
      onStartingInit.toggle();
    }
  }
  //
  @override
  void onInit() {
    __onInit();
    super.onInit();
  }
  //
  List<List<TransactionEntity>> get orderedTransactions{
    final _now = DateTime.now();
    List<TransactionEntity> _transactionOfThisYears = [];
    _transactionOfThisYears = transactions.where((element) => element.storedAt.year==_now.year && element.storedAt.month==selectedMonth.value).toList();
    if(_transactionOfThisYears.isNotEmpty){
      switch(selectedTransactionType.value){
        case TransactionTypeEnum.expense:
          _transactionOfThisYears = _transactionOfThisYears.where((element) => element.isExpense).toList();
          break;
        case TransactionTypeEnum.reload:
          _transactionOfThisYears = _transactionOfThisYears.where((element) => !element.isExpense).toList();
          break;
        case TransactionTypeEnum.all:
          break;
      }
      _transactionOfThisYears.sortedBy((element) => element.storedAt);
      final List<List<TransactionEntity>> _chunked = _transactionOfThisYears.chunkWhile((p0, p1) => p0.storedAt.isAtSameDayAs(p1.storedAt)).toList();

      return _chunked;
    }
    return [];
  }
  List<List<TransactionEntity>> get orderedTransactionsByMonth{
    final _now = DateTime.now();
    final List<TransactionEntity> _transactionOfThisYears = transactions.where((element) => element.storedAt.year==_now.year).toList();
    final List<List<TransactionEntity>> _chunked = _transactionOfThisYears.chunkWhile((p0, p1) => p0.storedAt.isAtSameMonthAs(p1.storedAt)).toList();
    selectedMonth.value = _chunked.first.first.storedAt.month;
    return _chunked;
  }

  DateTime get selectedMonthFromDateTime{
    final _now = DateTime.now();
    return DateTime(_now.year, selectedMonth.value, 1);
  }
}


