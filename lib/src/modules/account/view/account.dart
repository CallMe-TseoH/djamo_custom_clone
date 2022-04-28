import 'package:djamo_custom_clone/src/modules/account/view/pages/account_page.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  static const routeName = "/account";
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AccountPage();
  }
}
