import 'package:json_annotation/json_annotation.dart';


part 'transactions_data.g.dart';



@JsonSerializable()
class TransactData {
  final String category;
  final int transactions;
  final double total_amount;
  final double available_amount;

  const TransactData({
    required this.category,
    required this.transactions,
    required this.total_amount,
    required this.available_amount,
  });

  factory TransactData.fromJson(Map<String, dynamic> json) =>
      _$TransactDataFromJson(json);
}
