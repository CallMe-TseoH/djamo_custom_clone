import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/extension_helpers.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/account/controllers/account_controller.dart';
import 'package:djamo_custom_clone/src/modules/account/domain/entities/money_sender_service_entity.dart';
import 'package:djamo_custom_clone/src/modules/account/helpers/account_text_key.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'money_sender_service.dart';
part 'money_sender_service_carousel.dart';

class SendMoneyCard extends StatelessWidget {
  const SendMoneyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
      height: SizesHelper.height(195),
      padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(15), vertical: SizesHelper.height(15)),
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: SizesHelper.width(2.5)),
            child: const TextComponent(
              textKey: AccountTextKey.sendMoney,
              color: ColorsHelper.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Separator(value: 15),
          const Expanded(child: _MoneySenderServiceCarousel()),
        ],
      ),
    );
  }
}

