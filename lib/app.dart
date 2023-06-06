import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/screens/bank_screen.dart';
import 'package:todo/screens/home_screen.dart';
import 'package:todo/state/balance_cubit.dart';
import 'package:todo/state/contats_cubit.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BalanceCubit()),
        BlocProvider(create: (_) => ContactsCubit()..load()),
        // BlocProvider(create: (_) => TransactionsProvider()..load()),

      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Inter'),
        debugShowCheckedModeBanner: false,
        home: const BankScreen(),
      ),
    );
  }
}
