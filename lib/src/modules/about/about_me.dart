import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/about/pages/about_page.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  static const routeName = "/aboutMe";
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned.fill(child: AboutPage()),
          Positioned(child: SafeArea(
            child: ExtendedContainer(
              elevation: 1.0,
              height: SizesHelper.height(60),
              width: SizesHelper.height(60),
                shape: BoxShape.circle,
                color: Colors.white,child: const BackButton()),
          ), top: SizesHelper.height(5), left: SizesHelper.width(5),)
        ],
      ),
    );
  }
}
