part of 'charts_transactions_card.dart';
class _ChartsTransactionTileButton extends StatelessWidget {
  const _ChartsTransactionTileButton({
    Key? key, required this.transaction,
  }) : super(key: key);
final TransactionEntity transaction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(RMI.transactionDetail.name, arguments: transaction);

      },
      child: ExtendedContainer(
        border: Border(bottom: BorderSide(color: ColorsHelper.grey.withOpacity(.15))),
        padding: EdgeInsets.only(bottom: SizesHelper.height(20)),
        margin: EdgeInsets.only(bottom: SizesHelper.height(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                      height: SizesHelper.height(70),
                      child: CircleAvatar(backgroundColor: ColorsHelper.blue, radius: SizesHelper.height(26), backgroundImage: AssetImage(transaction.operatorLogoLInk!,),)),
                  const Separator(value: 20, onVertical: false),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextComponent(
                        textKey: transaction.operator,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.left,
                        fontSize: SizesHelper.fontSize(13),
                      ),
                      const Separator(value: 5),
                      ExtendedContainer(
                        color:(transaction.isExpense?ColorsHelper.red : Colors.green).withOpacity(.065),
                        borderRadius: BorderRadius.circular(SizesHelper.radius(4.5)),
                        padding: EdgeInsets.symmetric(vertical:SizesHelper.height(3.5), horizontal: SizesHelper.width(5)),
                        child: TextComponent(
                          textKey: transaction.isExpense? HelpersTextKey.payment:HelpersTextKey.reload,
                          color: transaction.isExpense?ColorsHelper.red : Colors.green,
                          fontSize: SizesHelper.fontSize(10.35),
                        ),
                      ),
                      const Separator(value: 5),
                      TextComponent(
                        textKey: DateFormat.Hm().format(transaction.storedAt),
                        color: ColorsHelper.grey.withOpacity(.5),
                        textAlign: TextAlign.left,
                        fontSize: SizesHelper.fontSize(12.0),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Column(
              children: [
                Separator(value: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextComponent(
                      textKey: "${ transaction.isExpense? "- "+transaction.amount.toString():transaction.amount.toString() }F CFA",
                      color: transaction.isExpense?ColorsHelper.red : Colors.green,
                      fontSize: SizesHelper.fontSize(11),
                    ),
                    Separator(value: 10, onVertical: false),
                    ExtendedContainer(
                      shape: BoxShape.circle,
                      color: ColorsHelper.blue.withOpacity(.065),
                      padding: EdgeInsets.all(SizesHelper.height(3.5)),
                      child: Icon(Icons.arrow_forward_ios, size: SizesHelper.fontSize(9.5), color: ColorsHelper.blue,),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
