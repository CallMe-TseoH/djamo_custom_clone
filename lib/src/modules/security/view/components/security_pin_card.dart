import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/app_spin.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/security/controllers/security_controller.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:djamo_custom_clone/src/modules/security/view/components/forgotten_password_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecurityPinCard extends GetView<SecurityController> {
  const SecurityPinCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return Obx(() {
              return ExtendedContainer(
                useAnimated: true,
                animatedTimeInMilliseconds: 200,
                shape: BoxShape.circle,
                color: controller.currentPinLength.value > index ? ColorsHelper.blue : Colors.white,
                height: _getPinBoxSize,
                margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(12)),
                width: _getPinBoxSize,
                border: Border.all(color: ColorsHelper.grey.withOpacity(.45), width: SizesHelper.width(2.75)),
              );
            });
          }),
        ),
        const Separator(value: 13.5),
        Obx(() {
          if(controller.onCharging.isTrue){
            return const AppSpin();
          } else if(controller.errorMessage.isNotEmpty) {
            return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Separator(value: 13.5),
              TextComponent(
                textKey: controller.errorMessage.value,
                color: ColorsHelper.red,
                fontSize: SizesHelper.fontSize(17),
              ),
            ],
          );
          } else{
            return const ForgottenPasswordButton();
          }
        }),

      ],
    );
  }

  double get _getPinBoxSize => SizesHelper.height(23.85);
}
