part of 'start_with_djamo_boarding.dart';

class _StartWithDjamoButton extends StatelessWidget {
  const _StartWithDjamoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      borderRadius: BorderRadius.circular(SizesHelper.radius(15)),
      color: ColorsHelper.softGrey,
      child: MaterialInkWell(
        onPressed: (){},
        radius: 15,
        child: Padding(
          padding: EdgeInsets.only(
            left: SizesHelper.width(15),
            right: SizesHelper.width(10),
            top: SizesHelper.height(20),
            bottom: SizesHelper.height(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    ExtendedContainer(
                      shape: BoxShape.circle,
                      height: SizesHelper.height(20),
                      width: SizesHelper.height(20),
                      border: Border.all(color: ColorsHelper.blue),
                    ),
                    const Separator(
                      value: 14,
                      onVertical: false,
                    ),
                    const TextComponent(
                      textKey: AccountTextKey.transferMoney,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorsHelper.blue,
                size: SizesHelper.fontSize(16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
