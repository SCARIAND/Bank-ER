// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

part of 'contats_data.dart';

ContactsData _$ContactsDataFromJson(Map<String, dynamic> json) => ContactsData(
      name: json['name'] as String,
      phone: json['phone'] as String,
      avatar: json['avatar'] as String,
      registered: json['registered'] as bool,
    );

Map<String, dynamic> _$ContactsDataToJson(ContactsData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'registered': instance.registered,
    };
