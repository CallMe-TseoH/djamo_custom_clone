import 'package:djamo_custom_clone/src/core/classes/willko_route.dart';
import 'package:djamo_custom_clone/src/modules/security/bindings/security_binding.dart';
import 'package:djamo_custom_clone/src/modules/security/view/security.dart';

class RMI{
  RMI._();
  static  WillkoRoute get security => WillkoRoute(name: Security.routeName, page: const Security(), binding: SecurityBinding(), index: 1);
  // static  WillkoRoute get about => WillkoRoute(name: AboutMe.routeName, page: const AboutMe(), binding: AboutBinding(), index: 3);
}