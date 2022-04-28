import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/transaction/helpers/transaction_text_key.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReceiptDownloadButton extends StatelessWidget {
  const ReceiptDownloadButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      borderRadius: BorderRadius.circular(SizesHelper.radius(5)),
      color: Colors.white,
      child: MaterialInkWell(
        onPressed: (){

        },
        radius: 5,
        splashColor: ColorsHelper.blue,
        child: Padding(

          padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(8), vertical: SizesHelper.height(8)),
          child: Row(children: [
             Icon(FontAwesomeIcons.download, color: ColorsHelper.blue, size: SizesHelper.fontSize(11),),
            const Separator(value: 5, onVertical: false),
            TextComponent(textKey: TransactionTextKey.download, color: ColorsHelper.blue, fontSize: SizesHelper.fontSize(12),)
          ],),
        ),
      ),
    );
  }
}
