import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';




import '../models/transactions_data.dart';
import '../providers/transactions_provider.dart';

class TransactionsNotifier extends ChangeNotifier {
  final _transactionsProvider = GetIt.instance.get<TransactionsProvider>();

  TransactionsNotifier() {
    loadTransactions();
  }

  List<TransactData> transactions = const [];

  void loadTransactions() async {
    transactions = await _transactionsProvider.getTransactions();
    notifyListeners();
  }
}

class TransactionsState extends InheritedNotifier<TransactionsNotifier> {
  const TransactionsState({
    super.key,
    required super.child,
    required super.notifier,
  });

  static  TransactionsNotifier of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<TransactionsState>();

    if (result == null) {
      throw Exception('TransactionsState not found');
    }

    return result.notifier!;
  }
}