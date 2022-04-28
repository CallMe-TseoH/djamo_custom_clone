import 'package:djamo_custom_clone/src/config/routes/route_model_interface.dart';
import 'package:djamo_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SecurityController extends GetxController{
  List<int> numericValuesIndex = [10, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11];
  List<int> numericValues = List.generate(10, (index) => index);
  //
  TextEditingController? _secretPinController;
  //
  RxBool onCharging = false.obs;
  RxInt currentPinLength = 0.obs;
  RxString errorMessage = "".obs;
  //
  void __onInit(){
    _secretPinController = TextEditingController();
    numericValues.shuffle();
  }

  @override
  void onInit() {
    __onInit();
    super.onInit();
  }
  //
  @override
  void onReady(){
    super.onReady();
    _secretPinController?.addListener(() async {
      currentPinLength.value  = (_secretPinController?.text.length)!;
      if(_secretPinController?.text.length==5){
        await connect();
      }
      if(errorMessage.value.isNotEmpty){
        errorMessage.value = "";
      }
    });
  }
  //
  void __onClose(){
    try{
      // _secretPinController?.dispose();
    }catch(_){

    }
  }

  @override
  void onClose(){
    __onClose();
    super.onInit();
  }
  //
  int? getNumericValueFromIndex(int index) {
    if (numericValues.length >= (index + 1)) {
      return numericValues.elementAt(index);
    }
    return null;
  }

  void onPressedNumericPadButton(int index){
    final int? _value = getNumericValueFromIndex(index);
    if(_value != null){
      if(_secretPinController?.text.length==5){
        return;
      }
      _secretPinController?.text = ((_secretPinController?.text)! + _value.toString());
    }else if(index == 11){
      if((_secretPinController?.text.isNotEmpty)!){
        final _lastValue = (_secretPinController?.text)!;
        _secretPinController?.text = (_lastValue.substring(0, _lastValue.length-1));
      }
    }
  }

  Future<void> connect() async {
    if(onCharging.isFalse) onCharging.toggle();
    final String _secretPin = (_secretPinController?.text.trim())!;
    if(_secretPin=="00000"){
      _secretPinController?.removeListener(() {});
      Future.delayed(const Duration(seconds: 3), (){
        Get.offNamed(RMI.navigator.name);
      });
    } else{
      Future.delayed(const Duration(seconds: 3), (){
        errorMessage.value = SecurityTextKey.invalidCode;
        if(onCharging.isTrue) onCharging.toggle();
      });
    }
  }
}