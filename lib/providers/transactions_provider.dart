import 'dart:convert';


import 'package:http/http.dart' as http;



import '../models/transactions_data.dart';


class TransactionsProvider {


  @override
  Future<List<TransactData>> getTransactions() async {
    final uri = Uri.parse(
        'https://raw.githubusercontent.com/alex-shinkevich/tms_api/main/project-3/expenses.json');
    final response = await http.get(uri);

    final json = jsonDecode(response.body);
    final list = json as List;

    return list.map((contactJson) => TransactData.fromJson(contactJson))
        .toList();
  }

}