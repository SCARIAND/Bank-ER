import '../models/contats_data.dart';
import 'api.dart';

class ContactsProvider {
  Future<List<ContactsData>> getContacts() async {
    final json = await Api.get('/all-contacts');
    return (json as List).map((json) => ContactsData.fromJson(json)).toList();
  }
}
