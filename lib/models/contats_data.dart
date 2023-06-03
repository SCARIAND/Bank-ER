

import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ContactsData {
  final String name;
  final String phone;
  final String avatar;
  final bool registered;

  const ContactsData({
    required this.name,
    required this.phone,
    required this.avatar,
    required this.registered,
  });

  factory ContactsData.fromJson(Map<String, dynamic> json) {
    return ContactsData(
      name: json['name'],
      phone: json['phone'],
      avatar: json['avatar'],
      registered: json['registered'],
    );
  }
}
