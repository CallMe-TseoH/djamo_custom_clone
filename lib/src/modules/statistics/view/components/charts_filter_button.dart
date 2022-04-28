part of 'charts_transactions_card.dart';

class _ChartsFilterButton extends GetView<StatisticsController> {
  const _ChartsFilterButton({
    Key? key,
    required this.title,
    required this.type,
  }) : super(key: key);
  final String title;
  final TransactionTypeEnum type;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ExtendedContainer(
        color: _isSelectedTransactionType ? ColorsHelper.blue : ColorsHelper.grey,
        useAnimated: true,
        animatedTimeInMilliseconds: 200,
        curve: Curves.easeInToLinear,
        borderRadius: BorderRadius.circular(SizesHelper.radius(5)),
        child: MaterialInkWell(
          onPressed: (){
            if(!_isSelectedTransactionType){
              controller.selectedTransactionType.value =type;
            }
          },
          radius: 5,
          splashColor: ColorsHelper.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(15), vertical: SizesHelper.height(8)),
            child: TextComponent(
              textKey: title,
              color: _isSelectedTransactionType ? Colors.white : ColorsHelper.softGrey,
              fontSize: SizesHelper.fontSize(13.5),
            ),
          ),
        ),
      );
    });
  }

  bool get _isSelectedTransactionType => controller.selectedTransactionType.value == type;
}
