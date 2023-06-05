import '../models/transactions_data.dart';
import 'api.dart';

class TransactionsProvider {
  Future<List<TransactData>> getTransactions() async {
    final json = await Api.get('/expenses');
    return (json['/expenses'] as List)
        .map((transactJson) => TransactData.fromJson(transactJson))
        .toList();
  }
}
