



import 'contats_data.dart';

class Done {
  final List<ContactsData> contactss = [];

  Iterable<String> get totalName => contactss.map((contacts) => contacts.name);

  void addContacts(ContactsData contacts) {
    contactss.add(contacts);
  }
}