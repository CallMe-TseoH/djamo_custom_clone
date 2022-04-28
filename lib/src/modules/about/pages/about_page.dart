import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/modules/about/components/contact_viewer_box.dart';
import 'package:djamo_custom_clone/src/modules/about/components/profile_card.dart';
import 'package:djamo_custom_clone/src/modules/about/components/project_info_card.dart';
import 'package:djamo_custom_clone/src/modules/components/page_structure.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageStructure(
      backgroundColor: ColorsHelper.softGrey,
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            ProfileCard(),
            ProjectInfoCard(),
            ContactViewerBox(),
          ],),
      ),
    ));
  }
}

