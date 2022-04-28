part of 'month_viewer.dart';

class _MonthButton extends GetView<StatisticsController> {
  const _MonthButton({
    Key? key, required this.firstTransaction,
  }) : super(key: key);
  final TransactionEntity firstTransaction;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ExtendedContainer(
        borderRadius: BorderRadius.circular(SizesHelper.radius(6)),
        useAnimated: true,
        animatedTimeInMilliseconds: 200,
        curve: Curves.easeInToLinear,
        color: _isSelectedMonth ? ColorsHelper.blue : ColorsHelper.grey,
        margin: EdgeInsets.only(right: SizesHelper.width(10)),

        child: MaterialInkWell(
          onPressed: (){
            if(!_isSelectedMonth) {
              controller.selectedMonth.value = firstTransaction.storedAt.month;
            }
          },
          radius: 6,
          splashColor: ColorsHelper.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: SizesHelper.height(8), horizontal: SizesHelper.width(13.5)),
            child: TextComponent(textKey: DateFormat.MMMM().format(firstTransaction.storedAt).capitalizeFirst!,
              color: _isSelectedMonth ? Colors.white : ColorsHelper.softGrey,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.25,),
          ),
        ),
      );
    });
  }

  bool get _isSelectedMonth => controller.selectedMonth.value == firstTransaction.storedAt.month;
}

