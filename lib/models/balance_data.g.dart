// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

part of 'balance_data.dart';

BalanceData _$BalanceDataFromJson(Map<String, dynamic> json) => BalanceData(
      availableBalance: int.parse(json['availableBalance']) as int,
      spent: int.parse(json['spent']) as int,
      earned: int.parse(json['earned']) as int,
    );

Map<String, dynamic> _$BalanceDataToJson(BalanceData instance) =>
    <String, dynamic>{
      'availableBalance': instance.availableBalance,
      'spent': instance.spent,
      'earned': instance.earned,
    };
