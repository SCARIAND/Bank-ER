

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/balance_data.dart';



 class BalanceProvider {


  Future<BalanceData?> getBalance() async {
   final uri = Uri.parse(
       'https://raw.githubusercontent.com/alex-shinkevich/tms_api/main/project-3/balance-info.json');
   final response = await http.get(uri);

   final balanceJson = jsonDecode(response.body);


   return BalanceData.fromJson(balanceJson);
  }

 }
