import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../models/balance_data.dart';
import '../providers/balance_provider.dart';

class BalanceNotifier extends ChangeNotifier {
  final _balanceProvider = GetIt.instance.get<BalanceProvider>();

  BalanceNotifier() {
    loadBalance();
  }

  BalanceData? balance;

  void loadBalance() async {
    balance = await _balanceProvider.getBalance();
    notifyListeners();
  }
}

class BalanceState extends InheritedNotifier<BalanceNotifier> {
  const BalanceState({
    super.key,
    required super.child,
    required super.notifier,
  });

  static BalanceNotifier of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<BalanceState>();

    if (result == null) {
      throw Exception('BalanceState not found');
    }

    return result.notifier!;
  }
}
