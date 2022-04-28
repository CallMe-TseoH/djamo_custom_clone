import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';

class ChangeCreditCardButton extends StatelessWidget {
  const ChangeCreditCardButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      padding: EdgeInsets.symmetric(vertical: SizesHelper.height(18), horizontal: SizesHelper.width(15)),
      color: Colors.black,
      child: Row(
        children: [
          const Icon(Icons.credit_card, color: Colors.white,),
          const Separator(value: 15, onVertical: false,),
          TextComponent(textKey: "XXXX-0001 (204 F CFA)", color: Colors.white, fontWeight: FontWeight.bold, fontSize: SizesHelper.fontSize(18),),
          const Spacer(),
          const Icon(Icons.keyboard_arrow_down, color: Colors.white,),
        ],
      ),
    );
  }
}
