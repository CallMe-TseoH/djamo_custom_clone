import 'package:djamo_custom_clone/src/modules/security/view/pages/security_page.dart';
import 'package:flutter/material.dart';

class Security extends StatelessWidget {
  static const routeName ="/security";

  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SecurityPage(),);
  }
}
