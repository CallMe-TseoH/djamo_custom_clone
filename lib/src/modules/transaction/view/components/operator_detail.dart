import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/components/transaction_type_indicator.dart';
import 'package:djamo_custom_clone/src/modules/transaction/controllers/transaction_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OperatorDetail extends GetView<TransactionDetailController> {
  const OperatorDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      textKey: (_getTransaction.isExpense ? "- " : "") + "${_getTransaction.amount} F CFA",
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                      fontSize: SizesHelper.fontSize(24),
                    ),
                    TextComponent(
                      textKey: _getTransaction.operator,
                      textAlign: TextAlign.left,
                      fontSize: SizesHelper.fontSize(18),
                    ),
                    TextComponent(
                      textKey: "ID 9029103892892389JH",
                      textAlign: TextAlign.left,
                      fontSize: SizesHelper.fontSize(16),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: ColorsHelper.grey,
                radius: SizesHelper.height(35),
                backgroundImage: AssetImage(_getTransaction.operatorLogoLInk!),
              )
            ],
          ),
          const Separator(value: 5),
          TransactionTypeIndicator(transaction: _getTransaction),
        ],
      ),
    );
  }

  TransactionEntity get _getTransaction => controller.transaction!;
}
