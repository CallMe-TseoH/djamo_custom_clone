import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/statistics/controllers/statistics_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

part 'month_button.dart';

class MonthViewer extends GetView<StatisticsController> {
  const MonthViewer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      padding: EdgeInsets.symmetric(vertical: SizesHelper.height(10), horizontal: SizesHelper.width(10)),
      child: Obx(() {
        if(controller.onStartingInit.isFalse) {
          return Row(
          children: controller.orderedTransactionsByMonth.map((e) => _MonthButton(firstTransaction: e.first)).toList(),
        );
        }
        return const Separator(value: 20);
      }),
    );
  }
}

