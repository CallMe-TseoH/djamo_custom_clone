import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/domain/entities/transaction_entity.dart';
import 'package:djamo_custom_clone/src/modules/components/app_spin.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:djamo_custom_clone/src/modules/statistics/controllers/statistics_controller.dart';
import 'package:djamo_custom_clone/src/modules/statistics/helpers/statistics_text_key.dart';
import 'package:djamo_custom_clone/src/modules/statistics/view/components/my_chart_symbol_render.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

part 'charts_sub_text_title.dart';

part 'selected_chart_value_overlay_card.dart';

class StatisticsCharts extends GetView<StatisticsController> {
  const StatisticsCharts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
      padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(15), vertical: SizesHelper.height(15)),
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Separator(value: 15),
          ExtendedContainer(
            height: SizesHelper.height(150),
            // margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Obx(() {
                    if (controller.onStartingInit.isFalse) {
                      return charts.LineChart(
                        controller.getChartsSeries(),
                        defaultRenderer: charts.LineRendererConfig(includeArea: true, stacked: true),
                        animate: true,
                        secondaryMeasureAxis: _buildNumericAxisSpec,
                        primaryMeasureAxis: _buildNumericAxisSpec,
                        domainAxis: const charts.NumericAxisSpec(showAxisLine: false, renderSpec: charts.SmallTickRendererSpec()),
                        selectionModels: [
                          charts.SelectionModelConfig(type: charts.SelectionModelType.info, changedListener: controller.onChangedChartValueListener)
                        ],
                        behaviors: [
                          charts.LinePointHighlighter(
                            showHorizontalFollowLine: charts.LinePointHighlighterFollowLineType.none,
                            showVerticalFollowLine: charts.LinePointHighlighterFollowLineType.nearest,
                            symbolRenderer: MyChartSymbolRender(),
                          )
                        ],
                      );
                    }
                    return SizedBox(height: SizesHelper.height(125), width: double.infinity, child: const Center(child: AppSpin()));
                  }),
                ),
                const Separator(value: 10),
                Obx(() {
                  return TextComponent(
                    textKey: StatisticsTextKey.thisMonthExpenses,
                    textParams: controller.onStartingInit.isFalse
                        ? {"period": DateFormat.yMMMM().format(controller.selectedMonthFromDateTime).capitalizeFirst!}
                        : {"period": " - "},
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.left,
                  );
                })
              ],
            ),
          ),
          const Separator(value: 10),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: SizesHelper.height(5),
            children: const [
              _ChartsSubTextTitle(
                title: StatisticsTextKey.monthReloads,
                subtitle: "6.900 F CFA",
              ),
              _ChartsSubTextTitle(
                title: StatisticsTextKey.initialBalance,
                subtitle: "900 F CFA",
              ),
              _ChartsSubTextTitle(
                title: StatisticsTextKey.monthExpenses,
                subtitle: "900 F CFA",
              ),
            ],
          ),
          const Separator(value: 15),
        ],
      ),
    );
  }

  charts.NumericAxisSpec get _buildNumericAxisSpec => const charts.NumericAxisSpec(showAxisLine: false, renderSpec: charts.NoneRenderSpec());
}
