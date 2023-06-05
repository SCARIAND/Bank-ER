import 'package:flutter/material.dart';

import '../constants/color_dot.dart';
import '../constants/theme_constants.dart';
import '../models/balance_data.dart';
import '../state/balance_state.dart';

class Spent extends StatefulWidget {
  const Spent({Key? key}) : super(key: key);

  @override
  State<Spent> createState() => _SpentState();
}

class _SpentState extends State<Spent> {
  final _balanceNotifier = BalanceNotifier();
  @override
  Widget build(BuildContext context) {
    return BalanceState(
      notifier: _balanceNotifier,
      child: Builder(builder: (context) {
        final state = BalanceState.of(context);

        return Stack(
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(
                color: ThemeColors.scaffold,
              ),
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37, right: 37),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[3],
                  borderRadius: BorderRadius.circular(10),
                  color: ThemeColors.container,
                ),
                child: ActivityBalance(balanceData: state.balance),
              ),
            )
          ],
        );
      }),
    );
  }
}

class ActivityBalance extends StatelessWidget {
  final BalanceData? balanceData;

  const ActivityBalance({
    super.key,
    required this.balanceData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10, top: 20),
                  child: ColorDot(color: Colors.red)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Spent'),
                  Text('\$${balanceData?.spent}', style: ThemeFonts.rr24),
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 20),
                child: ColorDot(color: Colors.blue),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Earned'),
                  Text('\$${balanceData?.earned}', style: ThemeFonts.rr24),
                ],
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ContentLine(),
      ),
      Text(
          'You  spent  \$${balanceData?.spent}  on  dining  out  this  month. Let’s  try  to  make it lower',
          style: ThemeFonts.r14),
      TextButton(
        onPressed: () {},
        child: const Text(
          'Tell me more',
          style: TextStyle(
            fontSize: 16,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    ]);
  }
}
