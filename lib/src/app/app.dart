import 'package:djamo_custom_clone/src/app/bindings/app_binding.dart';
import 'package:djamo_custom_clone/src/config/routes/app_routes.dart';
import 'package:djamo_custom_clone/src/config/routes/route_model_interface.dart';
import 'package:djamo_custom_clone/src/core/lang/appLocalisation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      builder:  (_)=> GetMaterialApp(
        title: "Djamo Custom Clone",
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: GoogleFonts.jost().fontFamily
        ),
        debugShowCheckedModeBanner: false,
        translations: AppLocalisation(),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        locale: Get.deviceLocale??const Locale('en', ''),
        supportedLocales: const [
          Locale('fr', ""),
          Locale('en', ""),
        ],
        fallbackLocale: const Locale('en', ''),
        defaultTransition: Transition.cupertino,
        opaqueRoute: Get.isOpaqueRouteDefault,
        popGesture: Get.isPopGestureEnable,
        transitionDuration: const Duration(milliseconds: 250),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        getPages: AppRoutes.getAppRoutes,
        initialBinding: AppBinding(),
        initialRoute: RMI.security.name,
      ),
    );
  }
}

