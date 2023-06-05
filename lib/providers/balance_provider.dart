import '../models/balance_data.dart';
import 'api.dart';

class BalanceProvider {
  Future<BalanceData?> getBalance() async {
    final Map<String, dynamic> json = await Api.get('/balance-info');

    return BalanceData.fromJson(json);
  }
}
