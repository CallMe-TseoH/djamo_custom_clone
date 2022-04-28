part of 'transactions_card.dart';

class _TransactionCardHeader extends StatelessWidget {
  const _TransactionCardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: SizesHelper.width(2.5)),
          child: const TextComponent(
            textKey: AccountTextKey.transaction,
            color: ColorsHelper.grey,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: SizesHelper.width(2.5)),
          child: const TextComponent(
            textKey: AccountTextKey.showAll,
            color: ColorsHelper.blue,
            textAlign: TextAlign.right,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
