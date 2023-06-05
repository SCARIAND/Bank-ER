


import 'package:json_annotation/json_annotation.dart';


part 'balance_data.g.dart';


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

  factory BalanceData.fromJson(Map<String, dynamic> json) =>
      _$BalanceDataFromJson(json);
}

