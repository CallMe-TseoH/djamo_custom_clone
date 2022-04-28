import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:djamo_custom_clone/src/modules/security/view/components/logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecurityAppBar extends StatelessWidget {
  const SecurityAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      width: double.infinity,
      height: SizesHelper.height(65),
      color: _getSoftGreyColor,
      padding: EdgeInsets.only(left: SizesHelper.width(14)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LogoutButton(),
            IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined))
          ],
        ),
      ),
    );
  }

  Color get _getSoftGreyColor => ColorsHelper.softGrey;
}

