import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizesHelper.height(35),
      child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: BorderSide(width: SizesHelper.width(3.0), color: Colors.black),
                    borderRadius: BorderRadius.circular(SizesHelper.radius(60)), ))),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: SizesHelper.width(8)),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: SizesHelper.height(18),
                ),
                const Separator(value: 5, onVertical: false,),
                const TextComponent(
                  textKey: SecurityTextKey.logout,
                  fontWeight: FontWeight.bold,
                  useOverFlow: false,
                ),
              ],
            ),
          )),
    );
  }
}
