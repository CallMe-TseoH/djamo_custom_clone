import 'package:djamo_custom_clone/src/config/routes/route_model_interface.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes{
  AppRoutes._();
  static List<GetPage> get getAppRoutes{
    return <GetPage>[
      GetPage(name: RMI.security.name, page: ()=>RMI.security.page, binding:RMI.security.binding),
      // GetPage(name: RMI.about.name, page: ()=>RMI.about.page, binding:RMI.about.binding),
    ];
  }
}