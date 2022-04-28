import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/transaction/controllers/transaction_controller.dart';
import 'package:djamo_custom_clone/src/modules/transaction/helpers/transaction_text_key.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/components/transaction_detail_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TransactionDetailViewer extends GetView<TransactionDetailController> {
  const TransactionDetailViewer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
      padding: EdgeInsets.only(left:SizesHelper.width(12), right:SizesHelper.width(12), bottom: SizesHelper.height(15), top: SizesHelper.height(25)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TransactionDetailTile(title:TransactionTextKey.dateAndTime,subtitle: DateFormat.yMd().add_Hm().format(_getTransaction.storedAt),),
          const TransactionDetailTile(title:TransactionTextKey.status,subtitle: TransactionTextKey.perform, subtitleColor: Colors.green,),
          TransactionDetailTile(title:TransactionTextKey.feeFreeAmount,subtitle: _getTransaction.feeFreeAmount.toString()+_getDevise),
          TransactionDetailTile(title:TransactionTextKey.fee,subtitle: _getTransaction.fee.toString()+_getDevise),
          TransactionDetailTile(title:_getTransaction.isExpense? TransactionTextKey.amountWithFee : TransactionTextKey.reloadedAmount,subtitle: _getTransaction.amount.toString()+_getDevise),
          TransactionDetailTile(title:TransactionTextKey.balanceAfterTransaction,subtitle: _getTransaction.balanceAfterTransaction.toString()+_getDevise),
        ],
      ),
    );
  }

  String get _getDevise => "F CFA";

  TransactionEntity get _getTransaction => controller.transaction!;

}

