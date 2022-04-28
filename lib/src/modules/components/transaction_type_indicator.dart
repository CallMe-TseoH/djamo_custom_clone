import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/helper_text_key.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';

class TransactionTypeIndicator extends StatelessWidget {
  const TransactionTypeIndicator({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final TransactionEntity transaction;

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color:(transaction.isExpense?ColorsHelper.red : Colors.green).withOpacity(.065),
      borderRadius: BorderRadius.circular(SizesHelper.radius(4.5)),
      padding: EdgeInsets.symmetric(vertical:SizesHelper.height(3.5), horizontal: SizesHelper.width(5)),
      child: TextComponent(
        textKey: transaction.isExpense? HelpersTextKey.payment:HelpersTextKey.reload,
        color: transaction.isExpense?ColorsHelper.red : Colors.green,
        fontSize: SizesHelper.fontSize(10.35),
      ),
    );
  }
}
