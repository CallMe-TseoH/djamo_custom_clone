import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/security/controllers/security_controller.dart';
import 'package:djamo_custom_clone/src/modules/security/view/components/numeric_pad_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NumericPad extends GetView<SecurityController> {
  const NumericPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      elevation: 2.0,
      height: SizesHelper.height(200),
      color: Colors.grey,
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(25.0)),
      borderRadius: BorderRadius.circular(SizesHelper.radius(15)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  controller.numericValuesIndex.sublist(0, 4).length,
                  (index) => Expanded(
                          child: NumericPadButton(
                        index: controller.numericValuesIndex.sublist(0, 4)[index],
                      ))),
            ),
          ),
          Expanded(
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  controller.numericValuesIndex.sublist(4, 8).length,
                  (index) => Expanded(
                          child: NumericPadButton(
                        index: controller.numericValuesIndex.sublist(4, 8)[index],
                      ))),
            ),
          ),
          
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  controller.numericValuesIndex.sublist(8, 12).length,
                  (index) => Expanded(
                          child: NumericPadButton(
                        index: controller.numericValuesIndex.sublist(8, 12)[index],
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}

// List.generate(controller.numericValuesIndex.length, (index) => NumericPadButton(index: controller.numericValuesIndex[index],))
/*Wrap(
spacing: SizesHelper.width(10),
alignment: WrapAlignment.spaceBetween,
children: List.generate(12, (index) => ExtendedContainer(
height: SizesHelper.height(35),
width: SizesHelper.height(35),
shape: BoxShape.circle,
child: MaterialInkWell(
customBorder: const CircleBorder(),
onPressed: (){

}, child: Center(child: TextComponent(textKey: '$index',fontWeight: FontWeight.w500, fontSize: SizesHelper.fontSize(18),), ),
),
)
)),*/
