// GENERATED CODE - DO NOT MODIFY BY HAND


// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************





part of 'balance_data.dart';


BalanceData _$BalanceDataFromJson(Map<String, dynamic> json) => BalanceData(


  availableBalance: json['availableBalance'] as int,
  spent: json['spent'] as int,
  earned: json['earned'] as int,



    );

Map<String, dynamic> _$BalanceDataToJson(BalanceData instance) =>
    <String, dynamic>{

      'availableBalance': instance.availableBalance,
      'spent': instance.spent,
      'earned': instance.earned,



    };
