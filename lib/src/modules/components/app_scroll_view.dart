import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:flutter/material.dart';

class AppScrollView extends StatelessWidget {
  const AppScrollView({Key? key, this.controller, required this.child, this.scrollingColor, this.physics}) : super(key: key);
  final ScrollController? controller;
  final Widget child;
  final Color? scrollingColor;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
        behavior: const ScrollBehavior(),
    child: GlowingOverscrollIndicator(
    axisDirection: AxisDirection.down,
    color: scrollingColor??Colors.transparent,
    child: SingleChildScrollView(
    physics: physics??const ClampingScrollPhysics(),
    controller: controller ?? ScrollController(),
    child: child,
    ),
    ));
  }
}
