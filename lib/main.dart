import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:todo/app.dart';
import 'package:todo/providers/balance_provider.dart';
import 'package:todo/providers/contats_provider.dart';
import 'package:todo/providers/transactions_provider.dart';

void main() {

  GetIt.instance.registerSingleton<ContactsProvider>(ContactsProvider());
  GetIt.instance.registerSingleton<TransactionsProvider>(TransactionsProvider());
  GetIt.instance.registerSingleton<BalanceProvider>(BalanceProvider());
  runApp(const App());
}
