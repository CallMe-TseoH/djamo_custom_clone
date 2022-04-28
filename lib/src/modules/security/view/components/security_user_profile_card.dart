import 'package:djamo_custom_clone/src/core/helpers/assets_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:flutter/material.dart';

class SecurityUserProfileCard extends StatelessWidget {
  const SecurityUserProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Separator(value: 20),
        TextComponent(
          textKey: SecurityTextKey.hello,
          textParams: const {"name": "Kevin'S"},
          fontWeight: FontWeight.bold,
          fontSize: SizesHelper.fontSize(16),
        ),
        const Separator(value: 3.5),
        const TextComponent(
          textKey: "07 49 96 2300",
          fontWeight: FontWeight.bold,
          // fontSize: SizesHelper.fontSize(16),
          color: ColorsHelper.grey,
        ),
        const Separator(value: 13.5),
        CircleAvatar(
          backgroundColor: ColorsHelper.blue,
          radius: SizesHelper.radius(37.5),
          backgroundImage: const AssetImage(AssetsHelper.kevinPhoto),
        ),
      ],
    );
  }
}
