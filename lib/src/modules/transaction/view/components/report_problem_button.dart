import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/transaction/helpers/transaction_text_key.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReportProblemButton extends StatelessWidget {
  const ReportProblemButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
      child: MaterialInkWell(
        onPressed: (){

        },
        radius: 20,
        splashColor: ColorsHelper.grey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:SizesHelper.width(15), vertical: SizesHelper.height(15)),
          child: Row(children: [
            Icon(FontAwesomeIcons.triangleExclamation, color: Colors.black, size: SizesHelper.fontSize(16),),
            const Separator(value: 10, onVertical: false,),
            TextComponent(textKey: TransactionTextKey.reportProblem, textAlign: TextAlign.left, fontSize: SizesHelper.fontSize(18), fontWeight: FontWeight.w600,),
            const Spacer(),
            Icon(FontAwesomeIcons.arrowRight, color: Colors.black, size: SizesHelper.fontSize(16),),
          ],),
        ),
      ),
    );
  }
}
