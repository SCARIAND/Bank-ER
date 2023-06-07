import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/state/transactions_cubit.dart';
import '../constants/theme_constants.dart';
import '../section/espenses_user.dart';
import 'home_screen.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TransactionsCubit()..load(),
      child: Scaffold(
        backgroundColor: ThemeColors.container,
        body: Column(
          children: [
            Stack(
              children: [
                AppBar(
                  centerTitle: true,
                  elevation: 0,
                  toolbarHeight: 62,
                  title: const Text('Expenses', style: ThemeFonts.rr20),
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: ThemeColors.text,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                  ),
                  backgroundColor: ThemeColors.container,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 84, right: 84, top: 130),
                  child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(120),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/exp.png'),
                        ),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 235),
                  child: Center(
                    child: Text('\$1200', style: ThemeFonts.rr22),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 38, right: 31),
              child: ExpensesUser(),
            ),
          ],
        ),
      ),
    );
  }
}
