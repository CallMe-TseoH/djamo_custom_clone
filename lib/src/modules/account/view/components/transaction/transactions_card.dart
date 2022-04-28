import 'package:dartx/dartx.dart';
import 'package:djamo_custom_clone/src/config/routes/route_model_interface.dart';
import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/helper_text_key.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/account/controllers/account_controller.dart';
import 'package:djamo_custom_clone/src/modules/account/helpers/account_text_key.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/components/transaction_type_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

part 'transaction_card_header.dart';

part 'transaction_tile_button.dart';

part 'transaction_by_day_viewer.dart';

class TransactionsCard extends GetView<AccountController> {
  const TransactionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(12)),
      padding: EdgeInsets.only(
        left: SizesHelper.width(25),
        right: SizesHelper.width(25),
        top: SizesHelper.height(15),
        bottom: SizesHelper.height(2.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Separator(value: 20),
          const _TransactionCardHeader(),
          const Separator(value: 20),
          Obx(() {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: controller.orderedTransactions.map((element) {
                final _firstData = element.first;
                final _data = element;
                _data.sortedBy((element) => element.storedAt);
                return _TransactionByDayViewer(date: DateFormat.yMd().format(_firstData.storedAt), data: _data);
              }).toList(),
            );
          })
        ],
      ),
    );
  }

}


