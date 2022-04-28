import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/transaction/controllers/transaction_controller.dart';
import 'package:djamo_custom_clone/src/modules/transaction/helpers/transaction_text_key.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/components/receipt_download_button.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/components/transaction_detail_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OtherTransactionDetailViewer extends GetView<TransactionDetailController> {
  const OtherTransactionDetailViewer({
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
        children:  [
        if(_getTransaction.isExpense)  const TransactionDetailTile(title:TransactionTextKey.buyWith,subtitle: "Carte Djamo XXXX-0001",),
          const TransactionDetailTile(title:TransactionTextKey.receipt, customSubtitle: ReceiptDownloadButton(),),
        ],
      ),
    );
  }
  TransactionEntity get _getTransaction => controller.transaction!;

}

