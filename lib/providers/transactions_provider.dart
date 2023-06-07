import '../models/transactions_data.dart';
import 'api.dart';

class TransactionsProvider {
  Future<List<TransactData>> getTransactions() async {
    final json = await Api.get('/expenses');
    return (json as List).map((json) => TransactData.fromJson(json)).toList();
  }
}
