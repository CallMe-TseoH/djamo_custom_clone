import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/transaction/helpers/transaction_text_key.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailWarningBox extends StatelessWidget {
  const DetailWarningBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.orange.shade50,
      borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
      padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(20), vertical: SizesHelper.height(25)),
      child: Row(
        children: [
          Icon(FontAwesomeIcons.circleExclamation, size: SizesHelper.fontSize(30), color: Colors.orange),
          const Separator(
            value: 10,
            onVertical: false,
          ),
           Flexible(
              child: TextComponent(
            textKey: TransactionTextKey.warningMessage,
            color: Colors.orange,
            useOverFlow: false,
            textAlign: TextAlign.left,
                fontSize: SizesHelper.fontSize(16),
          ),),
        ],
      ),
    );
  }
}
