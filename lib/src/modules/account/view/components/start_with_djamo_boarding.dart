import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/account/controllers/account_controller.dart';
import 'package:djamo_custom_clone/src/modules/account/helpers/account_text_key.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'start_with_djamo_button.dart';

class StartWithDjamoBoarding extends GetView<AccountController> {
  const StartWithDjamoBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(12)),
      padding: EdgeInsets.symmetric(
        horizontal: SizesHelper.width(15),
        vertical: SizesHelper.height(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: (){
              controller.showStartWithDjamoInstruction.toggle();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: SizesHelper.width(2.5)),
                  child: const TextComponent(
                    textKey: AccountTextKey.startWithDjamo,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Obx( () {
                    return  Icon(
                      controller.showStartWithDjamoInstruction.isFalse? Icons.keyboard_arrow_down_outlined:Icons.keyboard_arrow_up_outlined,
                      color: Colors.black,
                    );
                  }
                )
              ],
            ),
          ),
          Obx(() {
            return Visibility(
              visible: controller.showStartWithDjamoInstruction.value,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Separator(value: 15),
                  _StartWithDjamoButton()
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
