part of 'send_money_card.dart';

class _MoneySenderServiceCarousel extends GetView<AccountController> {
  const _MoneySenderServiceCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          Expanded(
            child: PageView(
              pageSnapping: true,
              padEnds: false,
              controller: PageController(viewportFraction: controller.viewportFraction.value),
              onPageChanged: (int index) {
                controller.updateViewportFraction(index);
              },
              children: List.generate(_allMoneySenderServices.length, (index) {
                final _moneySenderServices = _allMoneySenderServices[index];
                return ExtendedContainer(
                  color: Colors.white,
                  margin: EdgeInsets.only(right: SizesHelper.width(20)),
                  child: Row(
                    mainAxisAlignment: _moneySenderServices.length == 4 ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
                    children: _moneySenderServices
                        .map((e) => Padding(
                              padding: _moneySenderServices.length == 4 ? EdgeInsets.zero : const EdgeInsets.only(right: 20),
                              child: _MoneySenderService(
                                moneySenderService: e,
                              ),
                            ))
                        .toList(),
                  ),
                );
              }),
            ),
          ),
          const Separator(value: 15),
          DotsIndicator(
            dotsCount: _allMoneySenderServices.isNotEmpty?_allMoneySenderServices.length:1,
            position: controller.currentCarouselIndex.value.toDouble(),
            decorator: DotsDecorator(
              color: Colors.white,
              activeColor: Colors.black,
              shape: CircleBorder(
                side: BorderSide(
                  color: Colors.black,
                  width: SizesHelper.width(1),
                ),
              ),
            ),
          ),
          
        ],
      );
    });
  }

  List<List<MoneySenderServiceEntity>> get _allMoneySenderServices => controller.moneySenderServices.chunkList();
}
