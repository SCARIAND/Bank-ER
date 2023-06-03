import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';
import 'spent.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.container,
        appBar: AppBar(
          backgroundColor: ThemeColors.scaffold,
          elevation: 0,
          toolbarHeight: 200,
          title: Column(
            children: const [
              Text('\$7,425', style: ThemeFonts.r35),
              Text('Available balance', style: ThemeFonts.r15),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(37),
              child: Container(
                  width: 47,
                  height: 47,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Image.asset('assets/images/avat.png')),
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 400,
              child: Container(
                width: 440,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ThemeColors.scaffold,
                ),
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              bottom: 325,
              child: Container(
                width: 340,
                height: 212,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Spent(),

                //   Padding(
                //     padding: EdgeInsets.all(10),
                //     child: Text('You spent \$2,732 on dining out this month.',
                //         style: ThemeFonts.r14),
                //
                //   ),
                // ],
              ),
            ),
          ],
        ),
    );
  }
}


@override
Widget build(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: ThemeColors.burger,
    ),
    child: Text('Text', style: ThemeFonts.r16),
  );
}
