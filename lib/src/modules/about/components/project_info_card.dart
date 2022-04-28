import 'package:djamo_custom_clone/src/core/helpers/assets_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/about/helpers/about_text_key.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:flutter/material.dart';

class ProjectInfoCard extends StatelessWidget {
  const ProjectInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      elevation: 2,
      borderRadius: BorderRadius.circular(SizesHelper.radius(12)),
      margin: EdgeInsets.all(SizesHelper.height(8)),
      child: MaterialInkWell(
        onPressed: (){},
        radius: 12,
        splashColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Separator(value: 15),
              ExtendedContainer(
                height: SizesHelper.height(60),
                width: SizesHelper.height(60),
                shape: BoxShape.circle,
                child: ClipOval(child: Image.asset(AssetsHelper.djamoBgLogo)),
              ),
              const Separator(value: 15),
              TextComponent(textKey: "Djamo Custom Clone", useOverFlow: false, fontWeight: FontWeight.bold, fontSize: SizesHelper.fontSize(17),),
              const Separator(value: 5),
              TextComponent(textKey: AboutTextKey.projectDescription, useOverFlow: false, fontSize: SizesHelper.fontSize(13),),
              const Separator(value: 20),
              TextComponent(textKey: "Made with ❤️ by Kevin'S Assi\nfrom Lavigne Inc", useOverFlow: false, fontSize: SizesHelper.fontSize(13), color: Colors.grey.shade300,),
              const Separator(value: 5),

            ],
          ),
        ),
      ),
    );
  }
}
