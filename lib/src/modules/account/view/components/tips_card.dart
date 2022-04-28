import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/account/controllers/account_controller.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/entities/djamo_tip_entity.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'tip_button.dart';

class TipsCard extends GetView<AccountController> {
  const TipsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      height:  SizesHelper.height(100),
      child: Obx(() {
        return PageView(
          controller: controller.tipsPageController,
          children: List.generate(controller.djamoTips.length, (index){
            final _data = controller.djamoTips[index];
            return _TipButton(tipEntity: _data,);

          }),
        );
      }),
    );
  }
}

