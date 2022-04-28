part of 'tips_card.dart';

class _TipButton extends GetView<AccountController> {
  const _TipButton({
    Key? key, required this.tipEntity,
  }) : super(key: key);
  final DjamoTipEntity tipEntity;
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_){
        controller.tipHasBeenManuallyTaped.value = true;
      },
      onPointerUp: (_){
        controller.tipHasBeenManuallyTaped.value = true;
      },
      child: ExtendedContainer(
        color: Colors.white,
        borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
        margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(12)),
        height: SizesHelper.height(90),
        width: double.infinity,
        child: MaterialInkWell(
          onPressed: (){},
          radius: 20.0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:SizesHelper.height(15), vertical: SizesHelper.height(5)),
            child: Row(
              children: [
                 CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(tipEntity.illustrationLink),
                ),
                const Separator(
                  value: 10,
                  onVertical: false,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       TextComponent(
                        textKey: tipEntity.title,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.left,
                      ),
                      Flexible(
                        child: TextComponent(
                          textKey: tipEntity.subtitle,
                          useOverFlow: false,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.left,
                          color: ColorsHelper.grey.withOpacity(.5),
                          fontSize: SizesHelper.fontSize(12.65),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
