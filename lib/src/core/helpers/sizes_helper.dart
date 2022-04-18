import 'package:flutter_screenutil/flutter_screenutil.dart';

 class SizesHelper{
   SizesHelper._();
  static double height(double height) => height.h;
  static double width(double width) => width.w;
  static double fontSize(double value) => value.sp;
  static double radius(double radius) => radius.r;

  static double radiusCalculate(double shapeSize) {
    return ((10 / 57) * shapeSize) + 2.5;
  }

}