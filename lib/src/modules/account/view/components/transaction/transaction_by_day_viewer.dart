part of 'transactions_card.dart';

class _TransactionByDayViewer extends StatelessWidget {
  const _TransactionByDayViewer({
    Key? key, required this.date, required this.data,
  }) : super(key: key);
  final String date;
  final List<TransactionEntity> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: SizesHelper.width(2.5)),
          child: TextComponent(
            textKey: date,
            color: ColorsHelper.grey,
            textAlign: TextAlign.left,
          ),
        ),
        const Separator(value: 15),
        for(final _data in data)
          _TransactionTileButton(transaction: _data,),
      ],
    );
  }
}
