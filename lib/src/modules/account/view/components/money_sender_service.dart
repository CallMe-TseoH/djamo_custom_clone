part of 'send_money_card.dart';

class _MoneySenderService extends StatelessWidget {
  const _MoneySenderService({
    Key? key,
    required this.moneySenderService,
  }) : super(key: key);
  final MoneySenderServiceEntity moneySenderService;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: SizesHelper.radius(30),
            backgroundColor: ColorsHelper.blue.withOpacity(.15),
            child: ExtendedContainer(
              margin:  EdgeInsets.all(SizesHelper.height(5.0)),
              shape: BoxShape.circle,
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: ClipOval(
                child: Image.asset(moneySenderService.logoLink),
              ),
            ),
          ),
          const Separator(value: 7),
          TextComponent(
            textKey: moneySenderService.name,
            fontWeight: FontWeight.bold,
            fontSize: SizesHelper.fontSize(14),
          )
        ],
      ),
    );
  }
}
