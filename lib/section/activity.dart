import 'package:flutter/material.dart';
import 'package:todo/screens/transfer_screen.dart';

import '../constants/theme_constants.dart';

import '../screens/expenses_screen.dart';

import '../screens/transfer_amount_screen.dart';
import 'box_cards.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 37, left: 37, right: 37),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text('Activity', style: ThemeFonts.r18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TransferScreen()));
                },
                child: const BoxCard(
                  boxContent: ActivityState(

                    icon: Icon(Icons.telegram, color: ThemeColors.textBar),
                    text: 'Transfer',
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransferAmountPage()));
                },
                child: const BoxCard(
                  boxContent: ActivityState(
                    icon: Icon(Icons.credit_card, color: ThemeColors.textBar),
                    text: 'My Card',
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExpensesScreen()));

                },
                child: const BoxCard(
                  boxContent: ActivityState(
                    icon: Icon(Icons.stacked_bar_chart_rounded,
                        color: ThemeColors.textBar),
                    text: 'Insight',
                  ),
                ),
              ),
            ], // Added closing parenthesis here
          ),
        ],
      ),
    );
  }
}

class ActivityState extends StatelessWidget {
  final Icon icon;
  final String text;
  const ActivityState({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(

              width: 38,
              height: 38,
              clipBehavior: Clip.hardEdge,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: ThemeColors.scaffold,


              ),
              alignment: Alignment.center,

              child: icon,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
