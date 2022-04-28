import 'package:djamo_custom_clone/src/core/classes/willko_route.dart';
import 'package:djamo_custom_clone/src/modules/about/about_me.dart';
import 'package:djamo_custom_clone/src/modules/about/bindings/about_binding.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/app_navigator.dart';
import 'package:djamo_custom_clone/src/modules/appnavigator/bindings/app_navigator_binding.dart';
import 'package:djamo_custom_clone/src/modules/security/bindings/security_binding.dart';
import 'package:djamo_custom_clone/src/modules/security/view/security.dart';
import 'package:djamo_custom_clone/src/modules/transaction/bindings/transaction_binding.dart';
import 'package:djamo_custom_clone/src/modules/transaction/view/pages/transaction_detail_page.dart';

class RMI{
  RMI._();
  static  WillkoRoute get security => WillkoRoute(name: Security.routeName, page: const Security(), binding: SecurityBinding(), index: 0);
  static  WillkoRoute get navigator => WillkoRoute(name: AppNavigator.routeName, page: const AppNavigator(), binding: AppNavigatorBinding(), index: 1);
  static  WillkoRoute get transactionDetail => WillkoRoute(name: TransactionDetailPage.routeName, page: const TransactionDetailPage(), binding: TransactionBinding(), index: 2);
  static  WillkoRoute get about => WillkoRoute(name: AboutMe.routeName, page: const AboutMe(), binding: AboutBinding(), index: 3);
}