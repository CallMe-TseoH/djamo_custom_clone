import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:flutter/material.dart';

class ForgottenPasswordButton extends StatelessWidget {
  const ForgottenPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextComponent(textKey: SecurityTextKey.forgotPassword, color: ColorsHelper.blue,),
            const Separator(value: 1),
            Icon(
              Icons.arrow_forward_ios,
              color: ColorsHelper.blue,
              size: SizesHelper.height(10),
            ),
          ],
        ));
  }
}
