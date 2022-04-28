import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/page_structure.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/security/controllers/security_controller.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:djamo_custom_clone/src/modules/security/view/components/numeric_pad.dart';
import 'package:djamo_custom_clone/src/modules/security/view/components/security_app_bar.dart';
import 'package:djamo_custom_clone/src/modules/security/view/components/security_pin_card.dart';
import 'package:djamo_custom_clone/src/modules/security/view/components/security_user_profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SecurityPage extends GetView<SecurityController> {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: _getSoftGreyColor,
        statusBarColor: _getSoftGreyColor,
      ),
      child: PageStructure(
        backgroundColor: _getSoftGreyColor,
          appBar: const SecurityAppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SecurityUserProfileCard(),
                  Separator(value: 65),
                  SecurityPinCard(),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [

                  TextComponent(textKey: SecurityTextKey.composeSecretCode, color: ColorsHelper.red, fontSize: SizesHelper.fontSize(18),),
                  const Separator(value: 13.5),
                  const NumericPad(),
                  const Separator(value: 10),
                ],
              ),
            ],
          )),
    );
  }
  Color get _getSoftGreyColor => ColorsHelper.softGrey;

}


