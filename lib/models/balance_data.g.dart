// GENERATED CODE - DO NOT MODIFY BY HAND


// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************





import 'balance_data.dart';


BalanceData _$ContactDataFromJson(Map<String, dynamic> json) => BalanceData(


  availableBalance: json['availableBalance'] as int,
  spent: json['spent'] as int,
  earned: json['earned'] as int,



    );

Map<String, dynamic> _$ContactDataToJson(BalanceData instance) =>
    <String, dynamic>{

      'availableBalance': instance.availableBalance,
      'spent': instance.spent,
      'earned': instance.earned,



    };
