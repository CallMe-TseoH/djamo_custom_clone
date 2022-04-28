import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/components/app_scroll_view.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/transaction/controllers/transaction_controller.dart';
import 'package:djamo_custom_clone/src/modules/transaction/helpers/transaction_text_key.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/components/detail_warning_box.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/components/operator_detail.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/components/other_transaction_detail_viewer.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/components/report_problem_button.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/components/transaction_detail_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TransactionDetailPage extends GetView<TransactionDetailController> {
  static const routeName = '/TransactionDetailPage';

  const TransactionDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _buildSoftGrey,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(systemNavigationBarColor: _buildSoftGrey, statusBarColor: _buildSoftGrey),
        elevation: 0,
        backgroundColor: _buildSoftGrey,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: TextComponent(
          textKey: TransactionTextKey.transactionDetail,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
          fontSize: SizesHelper.fontSize(20),
        ),
      ),
      body: AppScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(15)),
        child: Column(
          children: [
            const OperatorDetail(),
            const Separator(value: 20),
            if (!_getTransaction.isExpense) ...[
              const DetailWarningBox(),
              const Separator(value: 12.5),
            ],
            const TransactionDetailViewer(),
            const Separator(value: 12.5),
            const OtherTransactionDetailViewer(),
            const Separator(value: 12.5),
            const ReportProblemButton()
          ],
        ),
      )),
    );
  }

  Color get _buildSoftGrey => ColorsHelper.softGrey;

  TransactionEntity get _getTransaction => controller.transaction!;
}
