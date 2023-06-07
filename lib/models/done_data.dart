import 'contats_data.dart';

class DoneData {
  final List<ContactsData> names;

  DoneData(this.names);

  void addContacts(ContactsData contacts) {
    names.add(contacts);
  }
}
