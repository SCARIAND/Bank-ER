

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/contats_data.dart';


 class ContactsProvider {


  Future<List<ContactsData>> getContacts() async {
   final uri = Uri.parse(
       'https://raw.githubusercontent.com/alex-shinkevich/tms_api/main/project-3/all-contacts.json');
   final response = await http.get(uri);

   final json = jsonDecode(response.body);
   final list = json as List;

   return list.map((contactJson) => ContactsData.fromJson(contactJson)).toList();
  }

 }
