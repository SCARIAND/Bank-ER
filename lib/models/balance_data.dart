

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BalanceData {

  final int availableBalance;
  final int spent;
  final int earned;

  const BalanceData( {

    required this.availableBalance,
    required this.spent,
    required this.earned,
  });

  factory BalanceData.fromJson(Map<String, dynamic> json) {
    return BalanceData(

      availableBalance: int.parse(json['availableBalance']),
      spent: int.parse(json['spent']),
      earned:  int.parse(json['earned']),


    );
  }
}
