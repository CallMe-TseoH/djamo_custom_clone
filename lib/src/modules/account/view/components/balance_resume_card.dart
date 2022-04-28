import 'package:djamo_custom_clone/src/core/helpers/assets_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/account/helpers/account_text_key.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';

part 'resume_part.dart';
part 'deposit_money_button.dart';

class BalanceResumeCard extends StatelessWidget {
  const BalanceResumeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(color: Colors.white,
      borderRadius: BorderRadius.circular(SizesHelper.radius(20)),
      padding: EdgeInsets.symmetric(horizontal:SizesHelper.width(15), vertical: SizesHelper.height(15)),
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(12)),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Expanded(child: _ResumePart()),
          _DepositMoneyButton()
        ],
      ),
    );
  }
}


