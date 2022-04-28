import 'package:djamo_custom_clone/src/modules/statistics/view/pages/statistics_page.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  static const routeName ="/statistics";
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: StatisticsPage(),);
  }
}
