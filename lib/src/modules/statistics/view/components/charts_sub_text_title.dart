part of 'statistics_charts.dart';

class _ChartsSubTextTitle extends StatelessWidget {
  const _ChartsSubTextTitle({
    Key? key, required this.title, required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextComponent(textKey: title, fontWeight: FontWeight.w800, fontSize: SizesHelper.fontSize(13),),
        TextComponent(textKey: subtitle, fontSize: SizesHelper.fontSize(13),),
      ],
    );
  }
}
