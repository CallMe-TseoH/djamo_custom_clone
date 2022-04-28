import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';

class TransactionDetailTile extends StatelessWidget {
  const TransactionDetailTile({
    Key? key, required this.title, this.subtitle, this.subtitleColor, this.customSubtitle,
  }) : super(key: key);
  final String title;
  final String? subtitle;
  final Color? subtitleColor;
  final Widget? customSubtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: SizesHelper.height(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextComponent(textKey: title, color: ColorsHelper.grey, textAlign: TextAlign.left, fontSize: SizesHelper.fontSize(19),),
          if(customSubtitle != null)
            customSubtitle!
          else
          TextComponent(textKey: subtitle??" - ", textAlign:  TextAlign.right, fontSize: SizesHelper.fontSize(19), color: subtitleColor,),
        ],
      ),
    );
  }
}
