import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/transactions_data.dart';
import '../providers/transactions_provider.dart';

class TransactionsCubit extends Cubit<List<TransactData>> {
  final _transactionsProvider = TransactionsProvider();
  TransactionsCubit() : super([]) {
    load();
  }

  void load() async {
    emit(await _transactionsProvider.getTransactions());
  }
}
