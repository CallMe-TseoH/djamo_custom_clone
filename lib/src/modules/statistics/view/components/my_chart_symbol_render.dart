import 'dart:math';
import 'package:charts_flutter/flutter.dart';
import 'package:charts_flutter/src/text_element.dart' as txt;
import 'package:charts_flutter/src/text_style.dart' as style;
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/statistics/helpers/statistics_text_key.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';

class MyChartSymbolRender extends CircleSymbolRenderer {
  static String value = "";

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int>? dashPattern, Color? fillColor, FillPatternType? fillPattern, Color? strokeColor, double? strokeWidthPx}) {
    canvas.drawRect(Rectangle(bounds.left - SizesHelper.width(35), bounds.top - 35, bounds.width + SizesHelper.width(100), bounds.height + SizesHelper.height(22.5)),
        fill: Color.white, stroke: Color.fromOther(color: const Color(r: 9, g: 50, b: 254)), strokeWidthPx: .85);

    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );
    final radius = min(bounds.width, bounds.height) / 2;
    canvas.drawPoint(
        point: center,
        radius: radius,
        fill: getSolidFillColor(fillColor),
        stroke: strokeColor,
        strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx));
    var textStyle = style.TextStyle();
    textStyle.color = Color.black;
    textStyle.fontSize = SizesHelper.fontSize(11).toInt();
    textStyle.fontFamily= GoogleFonts.jost().fontFamily!;
    canvas.drawText(txt.TextElement(StatisticsTextKey.thisDayExpenses.trParams({"period":value+" F CFA"}), style: textStyle,), (bounds.left-SizesHelper.width(30)).round(), (bounds.top - 31).round());
  }
}
