part of 'statistics_charts.dart';

class _SelectedChartValueOverlayCard extends StatelessWidget {
  const _SelectedChartValueOverlayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      border: Border.all(color: ColorsHelper.blue),
      borderRadius: BorderRadius.circular(SizesHelper.radius(2.5)),
      padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(2.5)),
      elevation: 2.25,
      color: Colors.white,
      height: SizesHelper.height(30),
      width: SizesHelper.width(100),
      child: Center(child: TextComponent(textKey: "Dépense de 500 au 11.20", fontSize: SizesHelper.fontSize(10), useOverFlow: false, textAlign: TextAlign.left,)),
    );
  }
}
