part of 'charts_transactions_card.dart';

class _ChartsTransactionCardHeader extends StatelessWidget {
  const _ChartsTransactionCardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: SizesHelper.width(2.5)),
              child: const TextComponent(
                textKey: StatisticsTextKey.transactions,
                color: ColorsHelper.grey,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(right: SizesHelper.width(2.5)),
              child: const TextComponent(
                textKey: StatisticsTextKey.statement,
                color: ColorsHelper.blue,
                textAlign: TextAlign.right,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: SizesHelper.fontSize(8), color: ColorsHelper.blue,)
          ],
        ),
const Separator(value: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            _ChartsFilterButton(title: StatisticsTextKey.expenses, type:TransactionTypeEnum.expense),
            _ChartsFilterButton(title: StatisticsTextKey.reloads, type:TransactionTypeEnum.reload),
            _ChartsFilterButton(title: StatisticsTextKey.allTransactions, type:TransactionTypeEnum.all),
          ],
        )
      ],
    );
  }
}

