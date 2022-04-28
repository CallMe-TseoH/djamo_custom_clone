import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComponent extends StatelessWidget {
  final String textKey;
  final TextAlign? textAlign;
  final Color? color;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? fontSize;
  final double? letterSpacing;
  final TextDecoration? decoration;
  final bool? useOverFlow;
  final int? maxLine;
  final bool useTranslation;
  final double? lineHeight;
  final List<BoxShadow>? textShadow;
  final Map<String, String> ? textParams;

  const TextComponent(
      {Key? key,
      required this.textKey,
      this.textAlign,
      this.color,
      this.fontWeight,
      this.fontFamily,
      this.fontSize,
      this.letterSpacing,
      this.decoration,
      this.useOverFlow = true, this.lineHeight, this.useTranslation = true, this.textParams, this.maxLine, this.textShadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
    useTranslation? textParams != null? textKey.trParams(textParams!): textKey.tr :  textKey,
      textAlign: textAlign ?? TextAlign.center,
      overflow: useOverFlow! ? TextOverflow.ellipsis : TextOverflow.visible,
      maxLines: maxLine,
      style: GoogleFonts.jost(
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.normal,
          height: lineHeight,
          fontSize:
              fontSize ?? SizesHelper.fontSize(15.0),
          decoration: decoration,
          letterSpacing: letterSpacing,
          // fontFamily: Goo,
        shadows: textShadow
      ),
    );
  }
}
