import 'package:json_annotation/json_annotation.dart';

part 'contats_data.g.dart';

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

  factory ContactsData.fromJson(Map<String, dynamic> json) =>
      _$ContactsDataFromJson(json);

  Map<String, dynamic> toJson() {
    return _$ContactsDataToJson(this);
  }
}
