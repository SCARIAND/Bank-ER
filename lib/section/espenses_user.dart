import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/theme_constants.dart';
import '../models/transactions_data.dart';
import '../state/transactions_cubit.dart';

class ExpensesUser extends StatelessWidget {
  const ExpensesUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsCubit, List<TransactData>>(
      builder: (context, state) {
        return Container(
          color: ThemeColors.container,
          child: SizedBox(
            height: 450,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: state.length,
              itemBuilder: (context, index) =>
                  TransactionsUser(transact: state[index]),
              separatorBuilder: (context, index) => const Divider(
                height: 5,
                color: ThemeColors.primary,
                thickness: 2,
              ),
            ),
          ),
        );
      },
    );
  }
}

class TransactionsUser extends StatelessWidget {
  final TransactData transact;

  const TransactionsUser({
    super.key,
    required this.transact,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
                      Text('${transact.transactions}', style: ThemeFonts.rr15),
                      const SizedBox(width: 4),
                      const Text('transactions', style: ThemeFonts.rr15),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox()),
            Row(
              children: [
                const Text('\$', style: ThemeFonts.rr20),
                Text(transact.available_amount.toString(),
                    style: ThemeFonts.rr20),
              ],
            ),
            const SizedBox(width: 25),
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
        const SizedBox(height: 20),
      ],
    );
  }
}
