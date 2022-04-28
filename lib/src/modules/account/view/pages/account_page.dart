import 'package:djamo_custom_clone/src/modules/account/view/components/balance_resume_card.dart';
import 'package:djamo_custom_clone/src/modules/account/view/components/send_money_card.dart';
import 'package:djamo_custom_clone/src/modules/account/view/components/start_with_djamo_boarding.dart';
import 'package:djamo_custom_clone/src/modules/account/view/components/tips_card.dart';
import 'package:djamo_custom_clone/src/modules/account/view/components/transaction/transactions_card.dart';
import 'package:djamo_custom_clone/src/modules/components/app_scroll_view.dart';
import 'package:djamo_custom_clone/src/modules/components/separator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScrollView(child: Column(
      children: const [
        BalanceResumeCard(),
        Separator(value: 10),
        SendMoneyCard(),
        Separator(value: 10),
        StartWithDjamoBoarding(),
        Separator(value: 10),
        TipsCard(),
        Separator(value: 10),
        TransactionsCard(),
        Separator(value: 10),
      ],
    ));
  }
}

