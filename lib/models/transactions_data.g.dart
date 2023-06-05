// GENERATED CODE - DO NOT MODIFY BY HAND


// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************






part of 'transactions_data.dart';

TransactData _$InfoDataFromJson(Map<String, dynamic> json) => TransactData(


  category: json['category'] as String,
  transactions: json['transactions'] as int,
  total_amount: json['total_amount'].toDouble(),
  available_amount: json['available_amount'].toDouble(),

    );

Map<String, dynamic> _$InfoDataToJson(TransactData instance) =>
    <String, dynamic>{

      'category': instance.category,
      'transactions': instance.transactions,
      'total_amount': instance.total_amount,
      'available_amount': instance.available_amount,


    };
