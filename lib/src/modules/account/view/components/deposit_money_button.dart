part of "balance_resume_card.dart";

class _DepositMoneyButton extends StatelessWidget {
  const _DepositMoneyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: ColorsHelper.blue.withOpacity(.15),
      borderRadius: BorderRadius.circular(SizesHelper.radius(10)),
      width: SizesHelper.width(88),
      height: SizesHelper.height(100),
      margin: EdgeInsets.symmetric(vertical: SizesHelper.height(10)),
      child: MaterialInkWell(
        onPressed: (){},
        radius: 10,
        splashColor: ColorsHelper.blue,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add, color: ColorsHelper.blue,),
              TextComponent(textKey: AccountTextKey.depositMoney, useOverFlow: false, color: ColorsHelper.blue, fontWeight: FontWeight.bold,)
            ],),
        ),
      ),
    );
  }
}
