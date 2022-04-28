import 'package:djamo_custom_clone/src/app/app.dart';
import 'package:djamo_custom_clone/src/core/helpers/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(systemNavigationBarColor: ColorsHelper.softGrey));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((value) async {
    try{
      Intl.defaultLocale = Get.deviceLocale?.toString()??const Locale('en', "US").toString();
    }catch(_){

    }
    runApp(const App());
  });
}

