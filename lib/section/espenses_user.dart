import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';
import '../models/contats_data.dart';
import '../models/transactions_data.dart';
import '../state/transactions_state.dart';

class ExpensesUser extends StatefulWidget {
  const ExpensesUser({Key? key}) : super(key: key);

  @override
  State<ExpensesUser> createState() => _ExpensesUserState();
}

class _ExpensesUserState extends State<ExpensesUser> {
  final _transactionsNotifier = TransactionsNotifier();
  @override
  Widget build(BuildContext context) {
    return TransactionsState(
      notifier: _transactionsNotifier,
      child: Container(
        color: ThemeColors.container,
        child: SizedBox(
          height: 450,
          child: Builder(
            builder: (context) {
              final state = TransactionsState.of(context);
              return ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,

                itemCount: state.transactions.length,
                itemBuilder: (context, index) =>
                    Transactions(transact: state.transactions[index]),
                separatorBuilder: (context, index) =>
                    Divider(height: 5, color: ThemeColors.primary,  thickness: 2,),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Transactions extends StatelessWidget {
  final TransactData transact;

  const Transactions({
    super.key,
    required this.transact,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 75,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(transact.category, style: ThemeFonts.rr16),
                Row(
                  children: [
                    Text(transact.transactions.toString(),
                        style: ThemeFonts.rr15),
                    SizedBox(width: 4),
                    Text('transactions', style: ThemeFonts.rr15),
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Row(
            children: [
              Text('\$', style: ThemeFonts.rr20),
              Text(transact.available_amount.toString(), style: ThemeFonts.rr20),
            ],
          ),
          SizedBox(width: 25),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const LinearProgressIndicator(
            value: 0.6,
            minHeight: 6,
            backgroundColor: Colors.grey,
          ),
        ),
      ),
      SizedBox(height: 20),

    ]);
  }
}
