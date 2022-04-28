import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:djamo_custom_clone/src/modules/components/extended_container.dart';
import 'package:djamo_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:djamo_custom_clone/src/modules/components/text_component.dart';
import 'package:djamo_custom_clone/src/modules/security/controllers/security_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NumericPadButton extends GetView<SecurityController> {
  const NumericPadButton({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    int? _value = controller.getNumericValueFromIndex(index);
    return ExtendedContainer(
      // height: SizesHelper.height(60),
      // width: SizesHelper.height(60),
      margin: _buildPadding(index)??EdgeInsets.zero,
      color: Colors.white,
      borderRadius:  _buildBorderRadius(index),
      child: MaterialInkWell(
        personalizeBorderRadius: _buildBorderRadius(index)??BorderRadius.zero,
        onPressed: () => controller.onPressedNumericPadButton(index),
        child: Center(
          child: _value != null
              ? TextComponent(
                  textKey: '$_value',
                  // fontWeight: FontWeight.w600,
                  fontSize: SizesHelper.fontSize(23),
                )
              : Icon(
                  index == 10 ? Icons.fingerprint : Icons.backspace,
                  color: index == 10 ?ColorsHelper.blue: Colors.black,
                ),
        ),
      ),
    );
  }

  BorderRadius? _buildBorderRadius(value){
    switch(value){
      case 2:
        return BorderRadius.only(topRight: _radius);
      case 7:
        return BorderRadius.only(bottomLeft: _radius);
      case 10:
        return BorderRadius.only(topLeft: _radius);
      case 11 :
        return BorderRadius.only(bottomRight: _radius);
      default:
        return null;
    }
  }
  EdgeInsets? _buildPadding(value){
    if(value != null){
      if(value>=0&&value<=1) {
        return EdgeInsets.only(bottom: _getButtonPaddingSize, left: _getButtonPaddingSize, right: _getButtonPaddingSize);
      } else if(value == 2){
        return EdgeInsets.only(left: _getButtonPaddingSize, bottom: _getButtonPaddingSize);
      } else if(value == 3){
        return EdgeInsets.only(top: _getButtonPaddingSize, right: _getButtonPaddingSize, bottom: _getButtonPaddingSize);
      } else if(value>=4&&value<=5){
        return EdgeInsets.all(_getButtonPaddingSize);
      }else if(value ==6){
        return EdgeInsets.only(top: _getButtonPaddingSize, left: _getButtonPaddingSize, bottom: _getButtonPaddingSize);
      }else if(value==7){
        return EdgeInsets.only(right: _getButtonPaddingSize, top: _getButtonPaddingSize);
      } else  if(value>=8&&value<=9) {
        return EdgeInsets.only(top: _getButtonPaddingSize, left: _getButtonPaddingSize, right: _getButtonPaddingSize);
      } else if(value == 10){
        return EdgeInsets.only(right: _getButtonPaddingSize, bottom: _getButtonPaddingSize);
      } else if(value == 11){
        return EdgeInsets.only(left: _getButtonPaddingSize, top: _getButtonPaddingSize);
      }
    }
    return EdgeInsets.zero;
  }

  double get _getButtonPaddingSize => SizesHelper.height(.1);
  Radius get _radius => Radius.circular(SizesHelper.radius(15));
}
