import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/app_scroll_view.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/statistics/view/components/change_credit_card_button.dart';
import 'package:djamo_custom_clone/src/modules/statistics/view/components/charts_transactions_card.dart';
import 'package:djamo_custom_clone/src/modules/statistics/view/components/month_viewer.dart';
import 'package:djamo_custom_clone/src/modules/statistics/view/components/statistics_charts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          top: SizesHelper.height(60),
          child: AppScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                MonthViewer(),
                StatisticsCharts(),
                Separator(value: 15),
                ChartsTransactionsCard(),
                Separator(value: 10),

              ],
            ),
          ),
        ),
        const Positioned(child:               ChangeCreditCardButton(), top: 0,right: 0, left: 0,),

      ],
    );
  }
}



