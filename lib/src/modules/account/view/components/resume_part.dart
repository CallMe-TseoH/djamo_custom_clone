part of 'balance_resume_card.dart';

class _ResumePart extends StatelessWidget {
  const _ResumePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextComponent(textKey: "204 F CFA", fontSize: SizesHelper.fontSize(25), fontWeight: FontWeight.w600,),
        const Separator(value: 5),
        Row(children: [
          ExtendedContainer(borderRadius: BorderRadius.circular(8),
            height: SizesHelper.height(30),
            width: SizesHelper.height(30),
            color: Colors.white,
            child: Image.asset(AssetsHelper.balanceChartIcon),
          ),
          const Separator(value: 10, onVertical: false,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextComponent(textKey: AccountTextKey.monthExpenses, fontWeight: FontWeight.bold),
              TextComponent(textKey: "0 F CFA", fontWeight: FontWeight.bold, color: ColorsHelper.grey, fontSize: SizesHelper.fontSize(17),),
            ],)
        ],)
      ],
    );
  }
}
