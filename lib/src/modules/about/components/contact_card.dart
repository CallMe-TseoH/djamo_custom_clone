import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/about/controllers/contact.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key, required this.contact,
  }) : super(key: key);
final Contact contact;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      elevation: 1.5,
      borderRadius: BorderRadius.circular(SizesHelper.radius(8)),
      height: SizesHelper.height(150),
      width: SizesHelper.width(175),
      child: MaterialInkWell(

        onPressed: () async {
          try{
            await launch((Uri.tryParse(contact.link)?.toString())!);
          }catch(e){
            Get.rawSnackbar(message: e.toString());
          }
        },
        radius: 8,
        splashColor: ColorsHelper.blue,
        child: Padding(
          padding: EdgeInsets.all(SizesHelper.height(10)),
          child: Center(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ExtendedContainer(
                        height: SizesHelper.height(50),
                        width: SizesHelper.height(50),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(contact.logoLink)
                        ),

                      ),
                      const Separator(value: 10),
                      TextComponent(textKey: contact.description, fontSize: SizesHelper.height(13),useOverFlow: false,)
                    ],
                  ),
                ),
                Positioned(child: Icon(Icons.touch_app_outlined, color: Colors.black, size: SizesHelper.fontSize(15),), top: SizesHelper.height(5), right: SizesHelper.width(5),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
